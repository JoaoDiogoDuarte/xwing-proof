	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_xwing_amd64_avx2_dec
	.globl	jade_kem_xwing_amd64_avx2_dec
	.globl	_jade_kem_xwing_amd64_avx2_enc
	.globl	jade_kem_xwing_amd64_avx2_enc
	.globl	_jade_kem_xwing_amd64_avx2_enc_derand
	.globl	jade_kem_xwing_amd64_avx2_enc_derand
	.globl	_jade_kem_xwing_amd64_avx2_keypair
	.globl	jade_kem_xwing_amd64_avx2_keypair
	.globl	_jade_kem_xwing_amd64_avx2_keypair_derand
	.globl	jade_kem_xwing_amd64_avx2_keypair_derand
	.globl	_jade_scalarmult_curve25519_amd64_ref4_base
	.globl	jade_scalarmult_curve25519_amd64_ref4_base
	.globl	_jade_scalarmult_curve25519_amd64_ref4
	.globl	jade_scalarmult_curve25519_amd64_ref4
_jade_kem_xwing_amd64_avx2_dec:
jade_kem_xwing_amd64_avx2_dec:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	lfence
	movq	$0, %rax
	movq	%rsi, %rcx
	leaq	-14584(%rsp), %rsp
	call	L_crypto_xkem_dec_jazz$1
Ljade_kem_xwing_amd64_avx2_dec$1:
	leaq	14584(%rsp), %rsp
	xorq	%rax, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_avx2_enc:
jade_kem_xwing_amd64_avx2_enc:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	%rax, 112(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rsp, %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rsp, %rax
	leaq	-13464(%rsp), %rsp
	call	L_crypto_xkem_enc_derand_jazz$1
Ljade_kem_xwing_amd64_avx2_enc$1:
	leaq	13464(%rsp), %rsp
	xorq	%rax, %rax
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %r13
	movq	96(%rsp), %r14
	movq	104(%rsp), %r15
	movq	112(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_avx2_enc_derand:
jade_kem_xwing_amd64_avx2_enc_derand:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	%rax, 112(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rsp, %rax
	movb	(%rcx), %dl
	movb	%dl, (%rax)
	movb	1(%rcx), %dl
	movb	%dl, 1(%rax)
	movb	2(%rcx), %dl
	movb	%dl, 2(%rax)
	movb	3(%rcx), %dl
	movb	%dl, 3(%rax)
	movb	4(%rcx), %dl
	movb	%dl, 4(%rax)
	movb	5(%rcx), %dl
	movb	%dl, 5(%rax)
	movb	6(%rcx), %dl
	movb	%dl, 6(%rax)
	movb	7(%rcx), %dl
	movb	%dl, 7(%rax)
	movb	8(%rcx), %dl
	movb	%dl, 8(%rax)
	movb	9(%rcx), %dl
	movb	%dl, 9(%rax)
	movb	10(%rcx), %dl
	movb	%dl, 10(%rax)
	movb	11(%rcx), %dl
	movb	%dl, 11(%rax)
	movb	12(%rcx), %dl
	movb	%dl, 12(%rax)
	movb	13(%rcx), %dl
	movb	%dl, 13(%rax)
	movb	14(%rcx), %dl
	movb	%dl, 14(%rax)
	movb	15(%rcx), %dl
	movb	%dl, 15(%rax)
	movb	16(%rcx), %dl
	movb	%dl, 16(%rax)
	movb	17(%rcx), %dl
	movb	%dl, 17(%rax)
	movb	18(%rcx), %dl
	movb	%dl, 18(%rax)
	movb	19(%rcx), %dl
	movb	%dl, 19(%rax)
	movb	20(%rcx), %dl
	movb	%dl, 20(%rax)
	movb	21(%rcx), %dl
	movb	%dl, 21(%rax)
	movb	22(%rcx), %dl
	movb	%dl, 22(%rax)
	movb	23(%rcx), %dl
	movb	%dl, 23(%rax)
	movb	24(%rcx), %dl
	movb	%dl, 24(%rax)
	movb	25(%rcx), %dl
	movb	%dl, 25(%rax)
	movb	26(%rcx), %dl
	movb	%dl, 26(%rax)
	movb	27(%rcx), %dl
	movb	%dl, 27(%rax)
	movb	28(%rcx), %dl
	movb	%dl, 28(%rax)
	movb	29(%rcx), %dl
	movb	%dl, 29(%rax)
	movb	30(%rcx), %dl
	movb	%dl, 30(%rax)
	movb	31(%rcx), %dl
	movb	%dl, 31(%rax)
	movb	32(%rcx), %dl
	movb	%dl, 32(%rax)
	movb	33(%rcx), %dl
	movb	%dl, 33(%rax)
	movb	34(%rcx), %dl
	movb	%dl, 34(%rax)
	movb	35(%rcx), %dl
	movb	%dl, 35(%rax)
	movb	36(%rcx), %dl
	movb	%dl, 36(%rax)
	movb	37(%rcx), %dl
	movb	%dl, 37(%rax)
	movb	38(%rcx), %dl
	movb	%dl, 38(%rax)
	movb	39(%rcx), %dl
	movb	%dl, 39(%rax)
	movb	40(%rcx), %dl
	movb	%dl, 40(%rax)
	movb	41(%rcx), %dl
	movb	%dl, 41(%rax)
	movb	42(%rcx), %dl
	movb	%dl, 42(%rax)
	movb	43(%rcx), %dl
	movb	%dl, 43(%rax)
	movb	44(%rcx), %dl
	movb	%dl, 44(%rax)
	movb	45(%rcx), %dl
	movb	%dl, 45(%rax)
	movb	46(%rcx), %dl
	movb	%dl, 46(%rax)
	movb	47(%rcx), %dl
	movb	%dl, 47(%rax)
	movb	48(%rcx), %dl
	movb	%dl, 48(%rax)
	movb	49(%rcx), %dl
	movb	%dl, 49(%rax)
	movb	50(%rcx), %dl
	movb	%dl, 50(%rax)
	movb	51(%rcx), %dl
	movb	%dl, 51(%rax)
	movb	52(%rcx), %dl
	movb	%dl, 52(%rax)
	movb	53(%rcx), %dl
	movb	%dl, 53(%rax)
	movb	54(%rcx), %dl
	movb	%dl, 54(%rax)
	movb	55(%rcx), %dl
	movb	%dl, 55(%rax)
	movb	56(%rcx), %dl
	movb	%dl, 56(%rax)
	movb	57(%rcx), %dl
	movb	%dl, 57(%rax)
	movb	58(%rcx), %dl
	movb	%dl, 58(%rax)
	movb	59(%rcx), %dl
	movb	%dl, 59(%rax)
	movb	60(%rcx), %dl
	movb	%dl, 60(%rax)
	movb	61(%rcx), %dl
	movb	%dl, 61(%rax)
	movb	62(%rcx), %dl
	movb	%dl, 62(%rax)
	movb	63(%rcx), %cl
	movb	%cl, 63(%rax)
	movq	%rsp, %rax
	leaq	-13464(%rsp), %rsp
	call	L_crypto_xkem_enc_derand_jazz$1
Ljade_kem_xwing_amd64_avx2_enc_derand$1:
	leaq	13464(%rsp), %rsp
	xorq	%rax, %rax
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %r13
	movq	96(%rsp), %r14
	movq	104(%rsp), %r15
	movq	112(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_avx2_keypair:
jade_kem_xwing_amd64_avx2_keypair:
	movq	%rsp, %rax
	leaq	-152(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 96(%rsp)
	movq	%rbp, 104(%rsp)
	movq	%r12, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	%r14, 128(%rsp)
	movq	%r15, 136(%rsp)
	movq	%rax, 144(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rsp, %rdi
	movq	$96, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rsp, %rax
	leaq	-10392(%rsp), %rsp
	call	L_crypto_xkem_keypair_derand_jazz$1
Ljade_kem_xwing_amd64_avx2_keypair$1:
	leaq	10392(%rsp), %rsp
	xorq	%rax, %rax
	movq	96(%rsp), %rbx
	movq	104(%rsp), %rbp
	movq	112(%rsp), %r12
	movq	120(%rsp), %r13
	movq	128(%rsp), %r14
	movq	136(%rsp), %r15
	movq	144(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_avx2_keypair_derand:
jade_kem_xwing_amd64_avx2_keypair_derand:
	movq	%rsp, %rax
	leaq	-152(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 96(%rsp)
	movq	%rbp, 104(%rsp)
	movq	%r12, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	%r14, 128(%rsp)
	movq	%r15, 136(%rsp)
	movq	%rax, 144(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rsp, %rax
	movb	(%rdx), %cl
	movb	%cl, (%rax)
	movb	1(%rdx), %cl
	movb	%cl, 1(%rax)
	movb	2(%rdx), %cl
	movb	%cl, 2(%rax)
	movb	3(%rdx), %cl
	movb	%cl, 3(%rax)
	movb	4(%rdx), %cl
	movb	%cl, 4(%rax)
	movb	5(%rdx), %cl
	movb	%cl, 5(%rax)
	movb	6(%rdx), %cl
	movb	%cl, 6(%rax)
	movb	7(%rdx), %cl
	movb	%cl, 7(%rax)
	movb	8(%rdx), %cl
	movb	%cl, 8(%rax)
	movb	9(%rdx), %cl
	movb	%cl, 9(%rax)
	movb	10(%rdx), %cl
	movb	%cl, 10(%rax)
	movb	11(%rdx), %cl
	movb	%cl, 11(%rax)
	movb	12(%rdx), %cl
	movb	%cl, 12(%rax)
	movb	13(%rdx), %cl
	movb	%cl, 13(%rax)
	movb	14(%rdx), %cl
	movb	%cl, 14(%rax)
	movb	15(%rdx), %cl
	movb	%cl, 15(%rax)
	movb	16(%rdx), %cl
	movb	%cl, 16(%rax)
	movb	17(%rdx), %cl
	movb	%cl, 17(%rax)
	movb	18(%rdx), %cl
	movb	%cl, 18(%rax)
	movb	19(%rdx), %cl
	movb	%cl, 19(%rax)
	movb	20(%rdx), %cl
	movb	%cl, 20(%rax)
	movb	21(%rdx), %cl
	movb	%cl, 21(%rax)
	movb	22(%rdx), %cl
	movb	%cl, 22(%rax)
	movb	23(%rdx), %cl
	movb	%cl, 23(%rax)
	movb	24(%rdx), %cl
	movb	%cl, 24(%rax)
	movb	25(%rdx), %cl
	movb	%cl, 25(%rax)
	movb	26(%rdx), %cl
	movb	%cl, 26(%rax)
	movb	27(%rdx), %cl
	movb	%cl, 27(%rax)
	movb	28(%rdx), %cl
	movb	%cl, 28(%rax)
	movb	29(%rdx), %cl
	movb	%cl, 29(%rax)
	movb	30(%rdx), %cl
	movb	%cl, 30(%rax)
	movb	31(%rdx), %cl
	movb	%cl, 31(%rax)
	movb	32(%rdx), %cl
	movb	%cl, 32(%rax)
	movb	33(%rdx), %cl
	movb	%cl, 33(%rax)
	movb	34(%rdx), %cl
	movb	%cl, 34(%rax)
	movb	35(%rdx), %cl
	movb	%cl, 35(%rax)
	movb	36(%rdx), %cl
	movb	%cl, 36(%rax)
	movb	37(%rdx), %cl
	movb	%cl, 37(%rax)
	movb	38(%rdx), %cl
	movb	%cl, 38(%rax)
	movb	39(%rdx), %cl
	movb	%cl, 39(%rax)
	movb	40(%rdx), %cl
	movb	%cl, 40(%rax)
	movb	41(%rdx), %cl
	movb	%cl, 41(%rax)
	movb	42(%rdx), %cl
	movb	%cl, 42(%rax)
	movb	43(%rdx), %cl
	movb	%cl, 43(%rax)
	movb	44(%rdx), %cl
	movb	%cl, 44(%rax)
	movb	45(%rdx), %cl
	movb	%cl, 45(%rax)
	movb	46(%rdx), %cl
	movb	%cl, 46(%rax)
	movb	47(%rdx), %cl
	movb	%cl, 47(%rax)
	movb	48(%rdx), %cl
	movb	%cl, 48(%rax)
	movb	49(%rdx), %cl
	movb	%cl, 49(%rax)
	movb	50(%rdx), %cl
	movb	%cl, 50(%rax)
	movb	51(%rdx), %cl
	movb	%cl, 51(%rax)
	movb	52(%rdx), %cl
	movb	%cl, 52(%rax)
	movb	53(%rdx), %cl
	movb	%cl, 53(%rax)
	movb	54(%rdx), %cl
	movb	%cl, 54(%rax)
	movb	55(%rdx), %cl
	movb	%cl, 55(%rax)
	movb	56(%rdx), %cl
	movb	%cl, 56(%rax)
	movb	57(%rdx), %cl
	movb	%cl, 57(%rax)
	movb	58(%rdx), %cl
	movb	%cl, 58(%rax)
	movb	59(%rdx), %cl
	movb	%cl, 59(%rax)
	movb	60(%rdx), %cl
	movb	%cl, 60(%rax)
	movb	61(%rdx), %cl
	movb	%cl, 61(%rax)
	movb	62(%rdx), %cl
	movb	%cl, 62(%rax)
	movb	63(%rdx), %cl
	movb	%cl, 63(%rax)
	movb	64(%rdx), %cl
	movb	%cl, 64(%rax)
	movb	65(%rdx), %cl
	movb	%cl, 65(%rax)
	movb	66(%rdx), %cl
	movb	%cl, 66(%rax)
	movb	67(%rdx), %cl
	movb	%cl, 67(%rax)
	movb	68(%rdx), %cl
	movb	%cl, 68(%rax)
	movb	69(%rdx), %cl
	movb	%cl, 69(%rax)
	movb	70(%rdx), %cl
	movb	%cl, 70(%rax)
	movb	71(%rdx), %cl
	movb	%cl, 71(%rax)
	movb	72(%rdx), %cl
	movb	%cl, 72(%rax)
	movb	73(%rdx), %cl
	movb	%cl, 73(%rax)
	movb	74(%rdx), %cl
	movb	%cl, 74(%rax)
	movb	75(%rdx), %cl
	movb	%cl, 75(%rax)
	movb	76(%rdx), %cl
	movb	%cl, 76(%rax)
	movb	77(%rdx), %cl
	movb	%cl, 77(%rax)
	movb	78(%rdx), %cl
	movb	%cl, 78(%rax)
	movb	79(%rdx), %cl
	movb	%cl, 79(%rax)
	movb	80(%rdx), %cl
	movb	%cl, 80(%rax)
	movb	81(%rdx), %cl
	movb	%cl, 81(%rax)
	movb	82(%rdx), %cl
	movb	%cl, 82(%rax)
	movb	83(%rdx), %cl
	movb	%cl, 83(%rax)
	movb	84(%rdx), %cl
	movb	%cl, 84(%rax)
	movb	85(%rdx), %cl
	movb	%cl, 85(%rax)
	movb	86(%rdx), %cl
	movb	%cl, 86(%rax)
	movb	87(%rdx), %cl
	movb	%cl, 87(%rax)
	movb	88(%rdx), %cl
	movb	%cl, 88(%rax)
	movb	89(%rdx), %cl
	movb	%cl, 89(%rax)
	movb	90(%rdx), %cl
	movb	%cl, 90(%rax)
	movb	91(%rdx), %cl
	movb	%cl, 91(%rax)
	movb	92(%rdx), %cl
	movb	%cl, 92(%rax)
	movb	93(%rdx), %cl
	movb	%cl, 93(%rax)
	movb	94(%rdx), %cl
	movb	%cl, 94(%rax)
	movb	95(%rdx), %cl
	movb	%cl, 95(%rax)
	movq	%rsp, %rax
	leaq	-10392(%rsp), %rsp
	call	L_crypto_xkem_keypair_derand_jazz$1
Ljade_kem_xwing_amd64_avx2_keypair_derand$1:
	leaq	10392(%rsp), %rsp
	xorq	%rax, %rax
	movq	96(%rsp), %rbx
	movq	104(%rsp), %rbp
	movq	112(%rsp), %r12
	movq	120(%rsp), %r13
	movq	128(%rsp), %r14
	movq	136(%rsp), %r15
	movq	144(%rsp), %rsp
	ret
L_crypto_xkem_dec_jazz$1:
	movq	%rdi, 14048(%rsp)
	movq	%rcx, 14056(%rsp)
	movq	%rdx, 14064(%rsp)
	movq	%rdi, 14072(%rsp)
	movq	%rcx, 14080(%rsp)
	leaq	32(%rsp), %rax
	vpbroadcastd	glob_data + 3164(%rip), %ymm0
	vmovdqu	glob_data + 32(%rip), %ymm1
	vpbroadcastq	glob_data + 2960(%rip), %ymm2
	vpbroadcastd	glob_data + 3160(%rip), %ymm3
	vmovdqu	(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3296(%rsp)
	vmovdqu	20(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3328(%rsp)
	vmovdqu	40(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3360(%rsp)
	vmovdqu	60(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3392(%rsp)
	vmovdqu	80(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3424(%rsp)
	vmovdqu	100(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3456(%rsp)
	vmovdqu	120(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3488(%rsp)
	vmovdqu	140(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3520(%rsp)
	vmovdqu	160(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3552(%rsp)
	vmovdqu	180(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3584(%rsp)
	vmovdqu	200(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3616(%rsp)
	vmovdqu	220(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3648(%rsp)
	vmovdqu	240(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3680(%rsp)
	vmovdqu	260(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3712(%rsp)
	vmovdqu	280(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3744(%rsp)
	vmovdqu	300(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3776(%rsp)
	vmovdqu	320(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3808(%rsp)
	vmovdqu	340(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3840(%rsp)
	vmovdqu	360(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3872(%rsp)
	vmovdqu	380(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3904(%rsp)
	vmovdqu	400(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3936(%rsp)
	vmovdqu	420(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3968(%rsp)
	vmovdqu	440(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4000(%rsp)
	vmovdqu	460(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4032(%rsp)
	vmovdqu	480(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4064(%rsp)
	vmovdqu	500(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4096(%rsp)
	vmovdqu	520(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4128(%rsp)
	vmovdqu	540(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4160(%rsp)
	vmovdqu	560(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4192(%rsp)
	vmovdqu	580(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4224(%rsp)
	vmovdqu	600(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4256(%rsp)
	vmovdqu	620(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4288(%rsp)
	vmovdqu	640(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4320(%rsp)
	vmovdqu	660(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4352(%rsp)
	vmovdqu	680(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4384(%rsp)
	vmovdqu	700(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4416(%rsp)
	vmovdqu	720(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4448(%rsp)
	vmovdqu	740(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4480(%rsp)
	vmovdqu	760(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4512(%rsp)
	vmovdqu	780(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4544(%rsp)
	vmovdqu	800(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4576(%rsp)
	vmovdqu	820(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4608(%rsp)
	vmovdqu	840(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4640(%rsp)
	vmovdqu	860(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4672(%rsp)
	vmovdqu	880(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4704(%rsp)
	vmovdqu	900(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4736(%rsp)
	vmovdqu	920(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4768(%rsp)
	vmovdqu	940(%rcx), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpsllvd	%ymm2, %ymm1, %ymm1
	vpsrlw	$1, %ymm1, %ymm1
	vpand	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 4800(%rsp)
	addq	$960, %rcx
	leaq	160(%rsp), %rsi
	leaq	-24(%rsp), %rsp
	call	L_poly_decompress$1
L_crypto_xkem_dec_jazz$208:
	leaq	24(%rsp), %rsp
	movq	%rdx, %rsi
	leaq	4832(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$207:
	addq	$384, %rsi
	leaq	5344(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$206:
	addq	$384, %rsi
	leaq	5856(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$205:
	leaq	3296(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$204:
	leaq	3808(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$203:
	leaq	4320(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$202:
	leaq	672(%rsp), %rcx
	leaq	4832(%rsp), %rsi
	leaq	3296(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$201:
	leaq	1184(%rsp), %rcx
	leaq	5344(%rsp), %rsi
	leaq	3808(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$200:
	leaq	672(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$199:
	leaq	1184(%rsp), %rcx
	leaq	5856(%rsp), %rsi
	leaq	4320(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$198:
	leaq	672(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$197:
	leaq	672(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$196:
	leaq	1184(%rsp), %rcx
	leaq	160(%rsp), %rsi
	leaq	672(%rsp), %rdi
	call	L_poly_sub$1
L_crypto_xkem_dec_jazz$195:
	leaq	1184(%rsp), %rcx
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	32(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rcx)
	vmovdqu	64(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	96(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	128(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	160(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rcx)
	vmovdqu	192(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rcx)
	vmovdqu	224(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	256(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	288(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rcx)
	vmovdqu	320(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	352(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	384(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rcx)
	vmovdqu	416(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rcx)
	vmovdqu	448(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	480(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	leaq	1184(%rsp), %rcx
	call	L_poly_tomsg_1$1
L_crypto_xkem_dec_jazz$194:
	movq	%rdx, %rax
	addq	$2336, %rax
	movq	(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 88(%rsp)
	movq	%rdx, 14088(%rsp)
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
L_crypto_xkem_dec_jazz$193:
	leaq	208(%rsp), %rsp
	movq	14088(%rsp), %rax
	addq	$1152, %rax
	leaq	2208(%rsp), %rcx
	leaq	32(%rsp), %rdi
	leaq	128(%rsp), %rdx
	movq	%rcx, 14096(%rsp)
	movq	%rax, %rsi
	leaq	3296(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$192:
	addq	$384, %rsi
	leaq	3808(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$191:
	addq	$384, %rsi
	leaq	4320(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$190:
	movq	$0, %rcx
	addq	$1152, %rax
	jmp 	L_crypto_xkem_dec_jazz$188
L_crypto_xkem_dec_jazz$189:
	movq	(%rax), %rsi
	movq	%rsi, 14128(%rsp,%rcx,8)
	addq	$8, %rax
	incq	%rcx
L_crypto_xkem_dec_jazz$188:
	cmpq	$4, %rcx
	jb  	L_crypto_xkem_dec_jazz$189
	leaq	1184(%rsp), %rax
	call	L_poly_frommsg_1$1
L_crypto_xkem_dec_jazz$187:
	movq	%rdx, 14104(%rsp)
	movq	$1, %rax
	movq	%rax, 14112(%rsp)
	movb	14128(%rsp), %al
	movb	%al, 14160(%rsp)
	movb	14129(%rsp), %al
	movb	%al, 14161(%rsp)
	movb	14130(%rsp), %al
	movb	%al, 14162(%rsp)
	movb	14131(%rsp), %al
	movb	%al, 14163(%rsp)
	movb	14132(%rsp), %al
	movb	%al, 14164(%rsp)
	movb	14133(%rsp), %al
	movb	%al, 14165(%rsp)
	movb	14134(%rsp), %al
	movb	%al, 14166(%rsp)
	movb	14135(%rsp), %al
	movb	%al, 14167(%rsp)
	movb	14136(%rsp), %al
	movb	%al, 14168(%rsp)
	movb	14137(%rsp), %al
	movb	%al, 14169(%rsp)
	movb	14138(%rsp), %al
	movb	%al, 14170(%rsp)
	movb	14139(%rsp), %al
	movb	%al, 14171(%rsp)
	movb	14140(%rsp), %al
	movb	%al, 14172(%rsp)
	movb	14141(%rsp), %al
	movb	%al, 14173(%rsp)
	movb	14142(%rsp), %al
	movb	%al, 14174(%rsp)
	movb	14143(%rsp), %al
	movb	%al, 14175(%rsp)
	movb	14144(%rsp), %al
	movb	%al, 14176(%rsp)
	movb	14145(%rsp), %al
	movb	%al, 14177(%rsp)
	movb	14146(%rsp), %al
	movb	%al, 14178(%rsp)
	movb	14147(%rsp), %al
	movb	%al, 14179(%rsp)
	movb	14148(%rsp), %al
	movb	%al, 14180(%rsp)
	movb	14149(%rsp), %al
	movb	%al, 14181(%rsp)
	movb	14150(%rsp), %al
	movb	%al, 14182(%rsp)
	movb	14151(%rsp), %al
	movb	%al, 14183(%rsp)
	movb	14152(%rsp), %al
	movb	%al, 14184(%rsp)
	movb	14153(%rsp), %al
	movb	%al, 14185(%rsp)
	movb	14154(%rsp), %al
	movb	%al, 14186(%rsp)
	movb	14155(%rsp), %al
	movb	%al, 14187(%rsp)
	movb	14156(%rsp), %al
	movb	%al, 14188(%rsp)
	movb	14157(%rsp), %al
	movb	%al, 14189(%rsp)
	movb	14158(%rsp), %al
	movb	%al, 14190(%rsp)
	movb	14159(%rsp), %al
	movb	%al, 14191(%rsp)
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$185
	movb	$0, 14192(%rsp)
	movb	$0, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$186
L_crypto_xkem_dec_jazz$185:
	movb	$0, 14192(%rsp)
	movb	$0, 14193(%rsp)
L_crypto_xkem_dec_jazz$186:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$184:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$174
L_crypto_xkem_dec_jazz$175:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$183:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$176
L_crypto_xkem_dec_jazz$177:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$178
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$176
L_crypto_xkem_dec_jazz$178:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$182
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$182:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$176
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$176
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$181:
L_crypto_xkem_dec_jazz$180:
L_crypto_xkem_dec_jazz$179:
L_crypto_xkem_dec_jazz$176:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$177
L_crypto_xkem_dec_jazz$174:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$175
	movq	$0, %rax
	leaq	9440(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$172
L_crypto_xkem_dec_jazz$173:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$172:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$173
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$170
	movb	$0, 14192(%rsp)
	movb	$1, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$171
L_crypto_xkem_dec_jazz$170:
	movb	$1, 14192(%rsp)
	movb	$0, 14193(%rsp)
L_crypto_xkem_dec_jazz$171:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$169:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$159
L_crypto_xkem_dec_jazz$160:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$168:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$161
L_crypto_xkem_dec_jazz$162:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$163
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$161
L_crypto_xkem_dec_jazz$163:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$167
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$167:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$161
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$161
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$166:
L_crypto_xkem_dec_jazz$165:
L_crypto_xkem_dec_jazz$164:
L_crypto_xkem_dec_jazz$161:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$162
L_crypto_xkem_dec_jazz$159:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$160
	movq	$0, %rax
	leaq	9952(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$157
L_crypto_xkem_dec_jazz$158:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$157:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$158
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$155
	movb	$0, 14192(%rsp)
	movb	$2, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$156
L_crypto_xkem_dec_jazz$155:
	movb	$2, 14192(%rsp)
	movb	$0, 14193(%rsp)
L_crypto_xkem_dec_jazz$156:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$154:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$144
L_crypto_xkem_dec_jazz$145:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$153:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$146
L_crypto_xkem_dec_jazz$147:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$148
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$146
L_crypto_xkem_dec_jazz$148:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$152
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$152:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$146
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$146
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$151:
L_crypto_xkem_dec_jazz$150:
L_crypto_xkem_dec_jazz$149:
L_crypto_xkem_dec_jazz$146:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$147
L_crypto_xkem_dec_jazz$144:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$145
	movq	$0, %rax
	leaq	10464(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$142
L_crypto_xkem_dec_jazz$143:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$142:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$143
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$140
	movb	$1, 14192(%rsp)
	movb	$0, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$141
L_crypto_xkem_dec_jazz$140:
	movb	$0, 14192(%rsp)
	movb	$1, 14193(%rsp)
L_crypto_xkem_dec_jazz$141:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$139:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$129
L_crypto_xkem_dec_jazz$130:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$138:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$131
L_crypto_xkem_dec_jazz$132:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$133
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$131
L_crypto_xkem_dec_jazz$133:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$137
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$137:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$131
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$131
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$136:
L_crypto_xkem_dec_jazz$135:
L_crypto_xkem_dec_jazz$134:
L_crypto_xkem_dec_jazz$131:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$132
L_crypto_xkem_dec_jazz$129:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$130
	movq	$0, %rax
	leaq	10976(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$127
L_crypto_xkem_dec_jazz$128:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$127:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$128
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$125
	movb	$1, 14192(%rsp)
	movb	$1, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$126
L_crypto_xkem_dec_jazz$125:
	movb	$1, 14192(%rsp)
	movb	$1, 14193(%rsp)
L_crypto_xkem_dec_jazz$126:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$124:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$114
L_crypto_xkem_dec_jazz$115:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$123:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$116
L_crypto_xkem_dec_jazz$117:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$118
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$116
L_crypto_xkem_dec_jazz$118:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$122
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$122:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$116
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$116
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$121:
L_crypto_xkem_dec_jazz$120:
L_crypto_xkem_dec_jazz$119:
L_crypto_xkem_dec_jazz$116:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$117
L_crypto_xkem_dec_jazz$114:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$115
	movq	$0, %rax
	leaq	11488(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$112
L_crypto_xkem_dec_jazz$113:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$112:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$113
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$110
	movb	$1, 14192(%rsp)
	movb	$2, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$111
L_crypto_xkem_dec_jazz$110:
	movb	$2, 14192(%rsp)
	movb	$1, 14193(%rsp)
L_crypto_xkem_dec_jazz$111:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$109:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$99
L_crypto_xkem_dec_jazz$100:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$108:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$101
L_crypto_xkem_dec_jazz$102:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$103
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$101
L_crypto_xkem_dec_jazz$103:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$107
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$107:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$101
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$101
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$106:
L_crypto_xkem_dec_jazz$105:
L_crypto_xkem_dec_jazz$104:
L_crypto_xkem_dec_jazz$101:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$102
L_crypto_xkem_dec_jazz$99:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$100
	movq	$0, %rax
	leaq	12000(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$97
L_crypto_xkem_dec_jazz$98:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$97:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$98
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$95
	movb	$2, 14192(%rsp)
	movb	$0, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$96
L_crypto_xkem_dec_jazz$95:
	movb	$0, 14192(%rsp)
	movb	$2, 14193(%rsp)
L_crypto_xkem_dec_jazz$96:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$94:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$84
L_crypto_xkem_dec_jazz$85:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$93:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$86
L_crypto_xkem_dec_jazz$87:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$88
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$86
L_crypto_xkem_dec_jazz$88:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$92
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$92:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$86
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$86
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$91:
L_crypto_xkem_dec_jazz$90:
L_crypto_xkem_dec_jazz$89:
L_crypto_xkem_dec_jazz$86:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$87
L_crypto_xkem_dec_jazz$84:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$85
	movq	$0, %rax
	leaq	12512(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$82
L_crypto_xkem_dec_jazz$83:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$82:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$83
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$80
	movb	$2, 14192(%rsp)
	movb	$1, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$81
L_crypto_xkem_dec_jazz$80:
	movb	$1, 14192(%rsp)
	movb	$2, 14193(%rsp)
L_crypto_xkem_dec_jazz$81:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$79:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$69
L_crypto_xkem_dec_jazz$70:
	movq	%rax, 14120(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$78:
	leaq	8(%rsp), %rsp
	movq	14120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$71
L_crypto_xkem_dec_jazz$72:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$73
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$71
L_crypto_xkem_dec_jazz$73:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$77
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$77:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$71
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$71
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$76:
L_crypto_xkem_dec_jazz$75:
L_crypto_xkem_dec_jazz$74:
L_crypto_xkem_dec_jazz$71:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$72
L_crypto_xkem_dec_jazz$69:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$70
	movq	$0, %rax
	leaq	13024(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$67
L_crypto_xkem_dec_jazz$68:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$67:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$68
	movq	14112(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$65
	movb	$2, 14192(%rsp)
	movb	$2, 14193(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$66
L_crypto_xkem_dec_jazz$65:
	movb	$2, 14192(%rsp)
	movb	$2, 14193(%rsp)
L_crypto_xkem_dec_jazz$66:
	leaq	14368(%rsp), %rax
	leaq	14160(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$64:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$54
L_crypto_xkem_dec_jazz$55:
	movq	%rax, 14112(%rsp)
	leaq	14368(%rsp), %rax
	leaq	14200(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$63:
	leaq	8(%rsp), %rsp
	movq	14112(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$56
L_crypto_xkem_dec_jazz$57:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$58
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$56
L_crypto_xkem_dec_jazz$58:
	movzbw	14200(%rsp,%rcx), %dx
	movzbw	14201(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	14202(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$62
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$62:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$56
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$56
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$61:
L_crypto_xkem_dec_jazz$60:
L_crypto_xkem_dec_jazz$59:
L_crypto_xkem_dec_jazz$56:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$57
L_crypto_xkem_dec_jazz$54:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$55
	movq	$0, %rax
	leaq	13536(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$52
L_crypto_xkem_dec_jazz$53:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$52:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$53
	leaq	9440(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$51:
	leaq	9952(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$50:
	leaq	10464(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$49:
	leaq	10976(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$48:
	leaq	11488(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$47:
	leaq	12000(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$46:
	leaq	12512(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$45:
	leaq	13024(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$44:
	leaq	13536(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_dec_jazz$43:
	movq	14104(%rsp), %rdi
	movb	$0, %r8b
	leaq	6368(%rsp), %rax
	leaq	6880(%rsp), %rcx
	leaq	7392(%rsp), %rdx
	leaq	4832(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_dec_jazz$42:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	5344(%rsp), %rax
	leaq	5856(%rsp), %rcx
	leaq	672(%rsp), %rdx
	leaq	7904(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_dec_jazz$41:
	leaq	1496(%rsp), %rsp
	leaq	6368(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$40:
	leaq	6880(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$39:
	leaq	7392(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$38:
	leaq	7904(%rsp), %rcx
	leaq	9440(%rsp), %rsi
	leaq	6368(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$37:
	leaq	160(%rsp), %rcx
	leaq	9952(%rsp), %rsi
	leaq	6880(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$36:
	leaq	7904(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$35:
	leaq	160(%rsp), %rcx
	leaq	10464(%rsp), %rsi
	leaq	7392(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$34:
	leaq	7904(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$33:
	leaq	8416(%rsp), %rcx
	leaq	10976(%rsp), %rsi
	leaq	6368(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$32:
	leaq	160(%rsp), %rcx
	leaq	11488(%rsp), %rsi
	leaq	6880(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$31:
	leaq	8416(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$30:
	leaq	160(%rsp), %rcx
	leaq	12000(%rsp), %rsi
	leaq	7392(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$29:
	leaq	8416(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$28:
	leaq	8928(%rsp), %rcx
	leaq	12512(%rsp), %rsi
	leaq	6368(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$27:
	leaq	160(%rsp), %rcx
	leaq	13024(%rsp), %rsi
	leaq	6880(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$26:
	leaq	8928(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$25:
	leaq	160(%rsp), %rcx
	leaq	13536(%rsp), %rsi
	leaq	7392(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$24:
	leaq	8928(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$23:
	leaq	160(%rsp), %rcx
	leaq	3296(%rsp), %rsi
	leaq	6368(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$22:
	leaq	1696(%rsp), %rcx
	leaq	3808(%rsp), %rsi
	leaq	6880(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$21:
	leaq	160(%rsp), %rcx
	leaq	1696(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$20:
	leaq	1696(%rsp), %rcx
	leaq	4320(%rsp), %rsi
	leaq	7392(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$19:
	leaq	160(%rsp), %rcx
	leaq	1696(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$18:
	leaq	7904(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$17:
	leaq	8416(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$16:
	leaq	8928(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$15:
	leaq	160(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$14:
	leaq	7904(%rsp), %rcx
	leaq	4832(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$13:
	leaq	8416(%rsp), %rcx
	leaq	5344(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$12:
	leaq	8928(%rsp), %rcx
	leaq	5856(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$11:
	leaq	160(%rsp), %rcx
	leaq	672(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$10:
	leaq	160(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$9:
	leaq	7904(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8416(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8928(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	160(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	14096(%rsp), %rax
	movq	%rax, %rdx
	leaq	7904(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$8:
	leaq	8416(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$7:
	leaq	8928(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$6:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rdx)
	vpextrd	$0, %xmm8, 16(%rdx)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rdx)
	vpextrd	$0, %xmm8, 36(%rdx)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rdx)
	vpextrd	$0, %xmm8, 56(%rdx)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rdx)
	vpextrd	$0, %xmm8, 76(%rdx)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rdx)
	vpextrd	$0, %xmm8, 96(%rdx)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rdx)
	vpextrd	$0, %xmm8, 116(%rdx)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rdx)
	vpextrd	$0, %xmm8, 136(%rdx)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rdx)
	vpextrd	$0, %xmm8, 156(%rdx)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rdx)
	vpextrd	$0, %xmm8, 176(%rdx)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rdx)
	vpextrd	$0, %xmm8, 196(%rdx)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rdx)
	vpextrd	$0, %xmm8, 216(%rdx)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rdx)
	vpextrd	$0, %xmm8, 236(%rdx)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rdx)
	vpextrd	$0, %xmm8, 256(%rdx)
	vmovdqu	8320(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rdx)
	vpextrd	$0, %xmm8, 276(%rdx)
	vmovdqu	8352(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rdx)
	vpextrd	$0, %xmm8, 296(%rdx)
	vmovdqu	8384(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rdx)
	vpextrd	$0, %xmm8, 316(%rdx)
	vmovdqu	8416(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rdx)
	vpextrd	$0, %xmm8, 336(%rdx)
	vmovdqu	8448(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rdx)
	vpextrd	$0, %xmm8, 356(%rdx)
	vmovdqu	8480(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rdx)
	vpextrd	$0, %xmm8, 376(%rdx)
	vmovdqu	8512(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rdx)
	vpextrd	$0, %xmm8, 396(%rdx)
	vmovdqu	8544(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rdx)
	vpextrd	$0, %xmm8, 416(%rdx)
	vmovdqu	8576(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rdx)
	vpextrd	$0, %xmm8, 436(%rdx)
	vmovdqu	8608(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rdx)
	vpextrd	$0, %xmm8, 456(%rdx)
	vmovdqu	8640(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rdx)
	vpextrd	$0, %xmm8, 476(%rdx)
	vmovdqu	8672(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rdx)
	vpextrd	$0, %xmm8, 496(%rdx)
	vmovdqu	8704(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rdx)
	vpextrd	$0, %xmm8, 516(%rdx)
	vmovdqu	8736(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rdx)
	vpextrd	$0, %xmm8, 536(%rdx)
	vmovdqu	8768(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rdx)
	vpextrd	$0, %xmm8, 556(%rdx)
	vmovdqu	8800(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rdx)
	vpextrd	$0, %xmm8, 576(%rdx)
	vmovdqu	8832(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rdx)
	vpextrd	$0, %xmm8, 596(%rdx)
	vmovdqu	8864(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rdx)
	vpextrd	$0, %xmm8, 616(%rdx)
	vmovdqu	8896(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rdx)
	vpextrd	$0, %xmm8, 636(%rdx)
	vmovdqu	8928(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rdx)
	vpextrd	$0, %xmm8, 656(%rdx)
	vmovdqu	8960(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rdx)
	vpextrd	$0, %xmm8, 676(%rdx)
	vmovdqu	8992(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rdx)
	vpextrd	$0, %xmm8, 696(%rdx)
	vmovdqu	9024(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rdx)
	vpextrd	$0, %xmm8, 716(%rdx)
	vmovdqu	9056(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rdx)
	vpextrd	$0, %xmm8, 736(%rdx)
	vmovdqu	9088(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rdx)
	vpextrd	$0, %xmm8, 756(%rdx)
	vmovdqu	9120(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rdx)
	vpextrd	$0, %xmm8, 776(%rdx)
	vmovdqu	9152(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rdx)
	vpextrd	$0, %xmm8, 796(%rdx)
	vmovdqu	9184(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rdx)
	vpextrd	$0, %xmm8, 816(%rdx)
	vmovdqu	9216(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rdx)
	vpextrd	$0, %xmm8, 836(%rdx)
	vmovdqu	9248(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rdx)
	vpextrd	$0, %xmm8, 856(%rdx)
	vmovdqu	9280(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rdx)
	vpextrd	$0, %xmm8, 876(%rdx)
	vmovdqu	9312(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rdx)
	vpextrd	$0, %xmm8, 896(%rdx)
	vmovdqu	9344(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rdx)
	vpextrd	$0, %xmm8, 916(%rdx)
	vmovdqu	9376(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rdx)
	vpextrd	$0, %xmm8, 936(%rdx)
	vmovdqu	9408(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$224, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rdx)
	vpextrd	$0, %xmm0, 956(%rdx)
	leaq	960(%rax), %rax
	leaq	160(%rsp), %rcx
	call	L_poly_compress_1$1
L_crypto_xkem_dec_jazz$5:
	movq	14080(%rsp), %rax
	leaq	2208(%rsp), %rcx
	movq	$0, %rdx
	movq	$1, %rsi
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	(%rcx), %ymm1
	vmovdqu	(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rcx), %ymm1
	vmovdqu	32(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rcx), %ymm1
	vmovdqu	64(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rcx), %ymm1
	vmovdqu	96(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rcx), %ymm1
	vmovdqu	128(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	160(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	192(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rcx), %ymm1
	vmovdqu	224(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rcx), %ymm1
	vmovdqu	256(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rcx), %ymm1
	vmovdqu	288(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rcx), %ymm1
	vmovdqu	320(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rcx), %ymm1
	vmovdqu	352(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	384(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	416(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rcx), %ymm1
	vmovdqu	448(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rcx), %ymm1
	vmovdqu	480(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	512(%rcx), %ymm1
	vmovdqu	512(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	544(%rcx), %ymm1
	vmovdqu	544(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	576(%rcx), %ymm1
	vmovdqu	576(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	608(%rcx), %ymm1
	vmovdqu	608(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	640(%rcx), %ymm1
	vmovdqu	640(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	672(%rcx), %ymm1
	vmovdqu	672(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	704(%rcx), %ymm1
	vmovdqu	704(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	736(%rcx), %ymm1
	vmovdqu	736(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	768(%rcx), %ymm1
	vmovdqu	768(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	800(%rcx), %ymm1
	vmovdqu	800(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	832(%rcx), %ymm1
	vmovdqu	832(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	864(%rcx), %ymm1
	vmovdqu	864(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	896(%rcx), %ymm1
	vmovdqu	896(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	928(%rcx), %ymm1
	vmovdqu	928(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	960(%rcx), %ymm1
	vmovdqu	960(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	992(%rcx), %ymm1
	vmovdqu	992(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1024(%rcx), %ymm1
	vmovdqu	1024(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1056(%rcx), %ymm1
	vmovdqu	1056(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	cmovne	%rsi, %rdx
	negq	%rdx
	shrq	$63, %rdx
	movq	%rdx, 14096(%rsp)
	movq	14080(%rsp), %rax
	movq	14088(%rsp), %rcx
	addq	$64, %rcx
	addq	$2304, %rcx
	movq	14072(%rsp), %rdx
	leaq	-232(%rsp), %rsp
	call	L_shake256_1120_32$1
L_crypto_xkem_dec_jazz$4:
	leaq	232(%rsp), %rsp
	movq	14072(%rsp), %rax
	movq	14096(%rsp), %rcx
	leaq	96(%rsp), %rdx
	negq	%rcx
	movq	%rcx, 14096(%rsp)
	vpbroadcastq	14096(%rsp), %ymm0
	vmovdqu	(%rdx), %ymm1
	vmovdqu	(%rax), %ymm2
	vpblendvb	%ymm0, %ymm2, %ymm1, %ymm0
	vmovdqu	%ymm0, (%rax)
	movq	14064(%rsp), %rax
	movq	14056(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	2400(%rax), %rax
	leaq	1088(%rcx), %rdx
	leaq	14128(%rsp), %rcx
	call	Lxwing_x25519_rp_p_p$1
L_crypto_xkem_dec_jazz$3:
	movq	14048(%rsp), %rax
	movq	14056(%rsp), %rcx
	movq	14064(%rsp), %rdx
	lfence
	movq	$0, %rsi
	movq	%rax, %rdi
	leaq	1088(%rcx), %rcx
	leaq	2432(%rdx), %rdx
	leaq	14128(%rsp), %rsi
	leaq	-200(%rsp), %rsp
	call	L_xwing_sha3$1
L_crypto_xkem_dec_jazz$2:
	leaq	200(%rsp), %rsp
	ret
L_crypto_xkem_enc_derand_jazz$1:
	movq	%r12, 12960(%rsp)
	movq	%rbx, 12968(%rsp)
	movq	%rbp, 12976(%rsp)
	movq	%rax, 12984(%rsp)
	movq	%r12, 12992(%rsp)
	movq	%rbx, 13000(%rsp)
	movq	%rbp, 13008(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	12992(%rsp), %r8
	movq	$1184, %rax
	leaq	64(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
L_crypto_xkem_enc_derand_jazz$194:
	leaq	232(%rsp), %rsp
	leaq	96(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
L_crypto_xkem_enc_derand_jazz$193:
	leaq	208(%rsp), %rsp
	movq	12992(%rsp), %rax
	leaq	32(%rsp), %rdi
	leaq	128(%rsp), %rcx
	movq	%rax, %rsi
	leaq	2208(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$192:
	addq	$384, %rsi
	leaq	2720(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$191:
	addq	$384, %rsi
	leaq	3232(%rsp), %r8
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$190:
	movq	$0, %rdx
	addq	$1152, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$188
L_crypto_xkem_enc_derand_jazz$189:
	movq	(%rax), %rsi
	movq	%rsi, 13032(%rsp,%rdx,8)
	addq	$8, %rax
	incq	%rdx
L_crypto_xkem_enc_derand_jazz$188:
	cmpq	$4, %rdx
	jb  	L_crypto_xkem_enc_derand_jazz$189
	leaq	160(%rsp), %rax
	call	L_poly_frommsg_1$1
L_crypto_xkem_enc_derand_jazz$187:
	movq	%rcx, 12992(%rsp)
	movq	$1, %rax
	movq	%rax, 13016(%rsp)
	movb	13032(%rsp), %al
	movb	%al, 13064(%rsp)
	movb	13033(%rsp), %al
	movb	%al, 13065(%rsp)
	movb	13034(%rsp), %al
	movb	%al, 13066(%rsp)
	movb	13035(%rsp), %al
	movb	%al, 13067(%rsp)
	movb	13036(%rsp), %al
	movb	%al, 13068(%rsp)
	movb	13037(%rsp), %al
	movb	%al, 13069(%rsp)
	movb	13038(%rsp), %al
	movb	%al, 13070(%rsp)
	movb	13039(%rsp), %al
	movb	%al, 13071(%rsp)
	movb	13040(%rsp), %al
	movb	%al, 13072(%rsp)
	movb	13041(%rsp), %al
	movb	%al, 13073(%rsp)
	movb	13042(%rsp), %al
	movb	%al, 13074(%rsp)
	movb	13043(%rsp), %al
	movb	%al, 13075(%rsp)
	movb	13044(%rsp), %al
	movb	%al, 13076(%rsp)
	movb	13045(%rsp), %al
	movb	%al, 13077(%rsp)
	movb	13046(%rsp), %al
	movb	%al, 13078(%rsp)
	movb	13047(%rsp), %al
	movb	%al, 13079(%rsp)
	movb	13048(%rsp), %al
	movb	%al, 13080(%rsp)
	movb	13049(%rsp), %al
	movb	%al, 13081(%rsp)
	movb	13050(%rsp), %al
	movb	%al, 13082(%rsp)
	movb	13051(%rsp), %al
	movb	%al, 13083(%rsp)
	movb	13052(%rsp), %al
	movb	%al, 13084(%rsp)
	movb	13053(%rsp), %al
	movb	%al, 13085(%rsp)
	movb	13054(%rsp), %al
	movb	%al, 13086(%rsp)
	movb	13055(%rsp), %al
	movb	%al, 13087(%rsp)
	movb	13056(%rsp), %al
	movb	%al, 13088(%rsp)
	movb	13057(%rsp), %al
	movb	%al, 13089(%rsp)
	movb	13058(%rsp), %al
	movb	%al, 13090(%rsp)
	movb	13059(%rsp), %al
	movb	%al, 13091(%rsp)
	movb	13060(%rsp), %al
	movb	%al, 13092(%rsp)
	movb	13061(%rsp), %al
	movb	%al, 13093(%rsp)
	movb	13062(%rsp), %al
	movb	%al, 13094(%rsp)
	movb	13063(%rsp), %al
	movb	%al, 13095(%rsp)
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$185
	movb	$0, 13096(%rsp)
	movb	$0, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$186
L_crypto_xkem_enc_derand_jazz$185:
	movb	$0, 13096(%rsp)
	movb	$0, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$186:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$184:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$174
L_crypto_xkem_enc_derand_jazz$175:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$183:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$176
L_crypto_xkem_enc_derand_jazz$177:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$178
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$176
L_crypto_xkem_enc_derand_jazz$178:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$182
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$182:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$176
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$176
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$181:
L_crypto_xkem_enc_derand_jazz$180:
L_crypto_xkem_enc_derand_jazz$179:
L_crypto_xkem_enc_derand_jazz$176:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$177
L_crypto_xkem_enc_derand_jazz$174:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$175
	movq	$0, %rax
	leaq	8352(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$172
L_crypto_xkem_enc_derand_jazz$173:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$172:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$173
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$170
	movb	$0, 13096(%rsp)
	movb	$1, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$171
L_crypto_xkem_enc_derand_jazz$170:
	movb	$1, 13096(%rsp)
	movb	$0, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$171:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$169:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$159
L_crypto_xkem_enc_derand_jazz$160:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$168:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$161
L_crypto_xkem_enc_derand_jazz$162:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$163
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$161
L_crypto_xkem_enc_derand_jazz$163:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$167
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$167:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$161
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$161
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$166:
L_crypto_xkem_enc_derand_jazz$165:
L_crypto_xkem_enc_derand_jazz$164:
L_crypto_xkem_enc_derand_jazz$161:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$162
L_crypto_xkem_enc_derand_jazz$159:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$160
	movq	$0, %rax
	leaq	8864(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$157
L_crypto_xkem_enc_derand_jazz$158:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$157:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$158
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$155
	movb	$0, 13096(%rsp)
	movb	$2, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$156
L_crypto_xkem_enc_derand_jazz$155:
	movb	$2, 13096(%rsp)
	movb	$0, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$156:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$154:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$144
L_crypto_xkem_enc_derand_jazz$145:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$153:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$146
L_crypto_xkem_enc_derand_jazz$147:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$148
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$146
L_crypto_xkem_enc_derand_jazz$148:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$152
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$152:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$146
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$146
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$151:
L_crypto_xkem_enc_derand_jazz$150:
L_crypto_xkem_enc_derand_jazz$149:
L_crypto_xkem_enc_derand_jazz$146:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$147
L_crypto_xkem_enc_derand_jazz$144:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$145
	movq	$0, %rax
	leaq	9376(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$142
L_crypto_xkem_enc_derand_jazz$143:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$142:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$143
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$140
	movb	$1, 13096(%rsp)
	movb	$0, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$141
L_crypto_xkem_enc_derand_jazz$140:
	movb	$0, 13096(%rsp)
	movb	$1, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$141:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$139:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$129
L_crypto_xkem_enc_derand_jazz$130:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$138:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$131
L_crypto_xkem_enc_derand_jazz$132:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$133
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$131
L_crypto_xkem_enc_derand_jazz$133:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$137
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$137:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$131
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$131
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$136:
L_crypto_xkem_enc_derand_jazz$135:
L_crypto_xkem_enc_derand_jazz$134:
L_crypto_xkem_enc_derand_jazz$131:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$132
L_crypto_xkem_enc_derand_jazz$129:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$130
	movq	$0, %rax
	leaq	9888(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$127
L_crypto_xkem_enc_derand_jazz$128:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$127:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$128
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$125
	movb	$1, 13096(%rsp)
	movb	$1, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$126
L_crypto_xkem_enc_derand_jazz$125:
	movb	$1, 13096(%rsp)
	movb	$1, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$126:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$124:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$114
L_crypto_xkem_enc_derand_jazz$115:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$123:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$116
L_crypto_xkem_enc_derand_jazz$117:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$118
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$116
L_crypto_xkem_enc_derand_jazz$118:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$122
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$122:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$116
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$116
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$121:
L_crypto_xkem_enc_derand_jazz$120:
L_crypto_xkem_enc_derand_jazz$119:
L_crypto_xkem_enc_derand_jazz$116:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$117
L_crypto_xkem_enc_derand_jazz$114:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$115
	movq	$0, %rax
	leaq	10400(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$112
L_crypto_xkem_enc_derand_jazz$113:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$112:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$113
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$110
	movb	$1, 13096(%rsp)
	movb	$2, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$111
L_crypto_xkem_enc_derand_jazz$110:
	movb	$2, 13096(%rsp)
	movb	$1, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$111:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$109:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$99
L_crypto_xkem_enc_derand_jazz$100:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$108:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$101
L_crypto_xkem_enc_derand_jazz$102:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$103
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$101
L_crypto_xkem_enc_derand_jazz$103:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$107
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$107:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$101
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$101
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$106:
L_crypto_xkem_enc_derand_jazz$105:
L_crypto_xkem_enc_derand_jazz$104:
L_crypto_xkem_enc_derand_jazz$101:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$102
L_crypto_xkem_enc_derand_jazz$99:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$100
	movq	$0, %rax
	leaq	10912(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$97
L_crypto_xkem_enc_derand_jazz$98:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$97:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$98
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$95
	movb	$2, 13096(%rsp)
	movb	$0, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$96
L_crypto_xkem_enc_derand_jazz$95:
	movb	$0, 13096(%rsp)
	movb	$2, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$96:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$94:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$84
L_crypto_xkem_enc_derand_jazz$85:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$93:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$86
L_crypto_xkem_enc_derand_jazz$87:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$88
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$86
L_crypto_xkem_enc_derand_jazz$88:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$92
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$92:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$86
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$86
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$91:
L_crypto_xkem_enc_derand_jazz$90:
L_crypto_xkem_enc_derand_jazz$89:
L_crypto_xkem_enc_derand_jazz$86:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$87
L_crypto_xkem_enc_derand_jazz$84:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$85
	movq	$0, %rax
	leaq	11424(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$82
L_crypto_xkem_enc_derand_jazz$83:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$82:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$83
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$80
	movb	$2, 13096(%rsp)
	movb	$1, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$81
L_crypto_xkem_enc_derand_jazz$80:
	movb	$1, 13096(%rsp)
	movb	$2, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$81:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$79:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$69
L_crypto_xkem_enc_derand_jazz$70:
	movq	%rax, 13024(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$78:
	leaq	8(%rsp), %rsp
	movq	13024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$71
L_crypto_xkem_enc_derand_jazz$72:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$73
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$71
L_crypto_xkem_enc_derand_jazz$73:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$77
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$77:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$71
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$71
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$76:
L_crypto_xkem_enc_derand_jazz$75:
L_crypto_xkem_enc_derand_jazz$74:
L_crypto_xkem_enc_derand_jazz$71:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$72
L_crypto_xkem_enc_derand_jazz$69:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$70
	movq	$0, %rax
	leaq	11936(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$67
L_crypto_xkem_enc_derand_jazz$68:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$67:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$68
	movq	13016(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$65
	movb	$2, 13096(%rsp)
	movb	$2, 13097(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$66
L_crypto_xkem_enc_derand_jazz$65:
	movb	$2, 13096(%rsp)
	movb	$2, 13097(%rsp)
L_crypto_xkem_enc_derand_jazz$66:
	leaq	13272(%rsp), %rax
	leaq	13064(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$64:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$54
L_crypto_xkem_enc_derand_jazz$55:
	movq	%rax, 13016(%rsp)
	leaq	13272(%rsp), %rax
	leaq	13104(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$63:
	leaq	8(%rsp), %rsp
	movq	13016(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$56
L_crypto_xkem_enc_derand_jazz$57:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$58
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$56
L_crypto_xkem_enc_derand_jazz$58:
	movzbw	13104(%rsp,%rcx), %dx
	movzbw	13105(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13106(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$62
	movw	%dx, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$62:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$56
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$56
	movw	%di, 672(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$61:
L_crypto_xkem_enc_derand_jazz$60:
L_crypto_xkem_enc_derand_jazz$59:
L_crypto_xkem_enc_derand_jazz$56:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$57
L_crypto_xkem_enc_derand_jazz$54:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$55
	movq	$0, %rax
	leaq	12448(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$52
L_crypto_xkem_enc_derand_jazz$53:
	movw	672(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$52:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$53
	leaq	8352(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$51:
	leaq	8864(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$50:
	leaq	9376(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$49:
	leaq	9888(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$48:
	leaq	10400(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$47:
	leaq	10912(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$46:
	leaq	11424(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$45:
	leaq	11936(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$44:
	leaq	12448(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_enc_derand_jazz$43:
	movq	12992(%rsp), %rdi
	movb	$0, %r8b
	leaq	5280(%rsp), %rax
	leaq	5792(%rsp), %rcx
	leaq	6304(%rsp), %rdx
	leaq	3744(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_enc_derand_jazz$42:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	4256(%rsp), %rax
	leaq	4768(%rsp), %rcx
	leaq	672(%rsp), %rdx
	leaq	6816(%rsp), %rsi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_enc_derand_jazz$41:
	leaq	1496(%rsp), %rsp
	leaq	5280(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$40:
	leaq	5792(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$39:
	leaq	6304(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$38:
	leaq	6816(%rsp), %rcx
	leaq	8352(%rsp), %rsi
	leaq	5280(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$37:
	leaq	1184(%rsp), %rcx
	leaq	8864(%rsp), %rsi
	leaq	5792(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$36:
	leaq	6816(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$35:
	leaq	1184(%rsp), %rcx
	leaq	9376(%rsp), %rsi
	leaq	6304(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$34:
	leaq	6816(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$33:
	leaq	7328(%rsp), %rcx
	leaq	9888(%rsp), %rsi
	leaq	5280(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$32:
	leaq	1184(%rsp), %rcx
	leaq	10400(%rsp), %rsi
	leaq	5792(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$31:
	leaq	7328(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$30:
	leaq	1184(%rsp), %rcx
	leaq	10912(%rsp), %rsi
	leaq	6304(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$29:
	leaq	7328(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$28:
	leaq	7840(%rsp), %rcx
	leaq	11424(%rsp), %rsi
	leaq	5280(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$27:
	leaq	1184(%rsp), %rcx
	leaq	11936(%rsp), %rsi
	leaq	5792(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$26:
	leaq	7840(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$25:
	leaq	1184(%rsp), %rcx
	leaq	12448(%rsp), %rsi
	leaq	6304(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$24:
	leaq	7840(%rsp), %rcx
	leaq	1184(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$23:
	leaq	1184(%rsp), %rcx
	leaq	2208(%rsp), %rsi
	leaq	5280(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$22:
	leaq	1696(%rsp), %rcx
	leaq	2720(%rsp), %rsi
	leaq	5792(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$21:
	leaq	1184(%rsp), %rcx
	leaq	1696(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$20:
	leaq	1696(%rsp), %rcx
	leaq	3232(%rsp), %rsi
	leaq	6304(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$19:
	leaq	1184(%rsp), %rcx
	leaq	1696(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$18:
	leaq	6816(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$17:
	leaq	7328(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$16:
	leaq	7840(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$15:
	leaq	1184(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$14:
	leaq	6816(%rsp), %rcx
	leaq	3744(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$13:
	leaq	7328(%rsp), %rcx
	leaq	4256(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$12:
	leaq	7840(%rsp), %rcx
	leaq	4768(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$11:
	leaq	1184(%rsp), %rcx
	leaq	672(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$10:
	leaq	1184(%rsp), %rcx
	leaq	160(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$9:
	leaq	6816(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7328(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7840(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	1184(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	13000(%rsp), %rax
	leaq	6816(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$8:
	leaq	7328(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$7:
	leaq	7840(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$6:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8320(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$224, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rax)
	vpextrd	$0, %xmm0, 956(%rax)
	addq	$960, %rax
	leaq	1184(%rsp), %rcx
	call	L_poly_compress$1
L_crypto_xkem_enc_derand_jazz$5:
	movq	13008(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	104(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	112(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	12968(%rsp), %rax
	movq	12984(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	1088(%rax), %rax
	leaq	32(%rcx), %rcx
	call	Lxwing_x25519_base_p_rp$1
L_crypto_xkem_enc_derand_jazz$4:
	movq	12984(%rsp), %rax
	movq	12960(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	32(%rax), %rax
	leaq	1184(%rcx), %rdx
	leaq	13032(%rsp), %rcx
	call	Lxwing_x25519_rp_rp_p$1
L_crypto_xkem_enc_derand_jazz$3:
	movq	12976(%rsp), %rax
	movq	12968(%rsp), %rcx
	movq	12960(%rsp), %rdx
	lfence
	movq	$0, %rsi
	movq	%rax, %rdi
	leaq	1088(%rcx), %rcx
	leaq	1184(%rdx), %rdx
	leaq	13032(%rsp), %rsi
	leaq	-200(%rsp), %rsp
	call	L_xwing_sha3$1
L_crypto_xkem_enc_derand_jazz$2:
	leaq	200(%rsp), %rsp
	ret
L_crypto_xkem_keypair_derand_jazz$1:
	movq	%rbx, 9792(%rsp)
	movq	%rbp, 9800(%rsp)
	movq	%rax, 9808(%rsp)
	movq	%rax, 9816(%rsp)
	movq	%rbx, 9824(%rsp)
	movq	%rbp, 9832(%rsp)
	movq	%rbx, 9840(%rsp)
	movq	%rbp, 9848(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	leaq	9944(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_32$1
L_crypto_xkem_keypair_derand_jazz$183:
	leaq	208(%rsp), %rsp
	movq	9944(%rsp), %rax
	movq	%rax, 9872(%rsp)
	movq	9976(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	9952(%rsp), %rax
	movq	%rax, 9880(%rsp)
	movq	9984(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	9960(%rsp), %rax
	movq	%rax, 9888(%rsp)
	movq	9992(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	9968(%rsp), %rax
	movq	%rax, 9896(%rsp)
	movq	10000(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, %rax
	movq	%rax, 9856(%rsp)
	movb	9872(%rsp), %al
	movb	%al, 9904(%rsp)
	movb	9873(%rsp), %al
	movb	%al, 9905(%rsp)
	movb	9874(%rsp), %al
	movb	%al, 9906(%rsp)
	movb	9875(%rsp), %al
	movb	%al, 9907(%rsp)
	movb	9876(%rsp), %al
	movb	%al, 9908(%rsp)
	movb	9877(%rsp), %al
	movb	%al, 9909(%rsp)
	movb	9878(%rsp), %al
	movb	%al, 9910(%rsp)
	movb	9879(%rsp), %al
	movb	%al, 9911(%rsp)
	movb	9880(%rsp), %al
	movb	%al, 9912(%rsp)
	movb	9881(%rsp), %al
	movb	%al, 9913(%rsp)
	movb	9882(%rsp), %al
	movb	%al, 9914(%rsp)
	movb	9883(%rsp), %al
	movb	%al, 9915(%rsp)
	movb	9884(%rsp), %al
	movb	%al, 9916(%rsp)
	movb	9885(%rsp), %al
	movb	%al, 9917(%rsp)
	movb	9886(%rsp), %al
	movb	%al, 9918(%rsp)
	movb	9887(%rsp), %al
	movb	%al, 9919(%rsp)
	movb	9888(%rsp), %al
	movb	%al, 9920(%rsp)
	movb	9889(%rsp), %al
	movb	%al, 9921(%rsp)
	movb	9890(%rsp), %al
	movb	%al, 9922(%rsp)
	movb	9891(%rsp), %al
	movb	%al, 9923(%rsp)
	movb	9892(%rsp), %al
	movb	%al, 9924(%rsp)
	movb	9893(%rsp), %al
	movb	%al, 9925(%rsp)
	movb	9894(%rsp), %al
	movb	%al, 9926(%rsp)
	movb	9895(%rsp), %al
	movb	%al, 9927(%rsp)
	movb	9896(%rsp), %al
	movb	%al, 9928(%rsp)
	movb	9897(%rsp), %al
	movb	%al, 9929(%rsp)
	movb	9898(%rsp), %al
	movb	%al, 9930(%rsp)
	movb	9899(%rsp), %al
	movb	%al, 9931(%rsp)
	movb	9900(%rsp), %al
	movb	%al, 9932(%rsp)
	movb	9901(%rsp), %al
	movb	%al, 9933(%rsp)
	movb	9902(%rsp), %al
	movb	%al, 9934(%rsp)
	movb	9903(%rsp), %al
	movb	%al, 9935(%rsp)
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$181
	movb	$0, 9936(%rsp)
	movb	$0, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$182
L_crypto_xkem_keypair_derand_jazz$181:
	movb	$0, 9936(%rsp)
	movb	$0, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$182:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$180:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$170
L_crypto_xkem_keypair_derand_jazz$171:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$179:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$172
L_crypto_xkem_keypair_derand_jazz$173:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$174
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$172
L_crypto_xkem_keypair_derand_jazz$174:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$178
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$178:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$172
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$172
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$177:
L_crypto_xkem_keypair_derand_jazz$176:
L_crypto_xkem_keypair_derand_jazz$175:
L_crypto_xkem_keypair_derand_jazz$172:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$173
L_crypto_xkem_keypair_derand_jazz$170:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$171
	movq	$0, %rax
	leaq	5184(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$168
L_crypto_xkem_keypair_derand_jazz$169:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$168:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$169
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$166
	movb	$0, 9936(%rsp)
	movb	$1, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$167
L_crypto_xkem_keypair_derand_jazz$166:
	movb	$1, 9936(%rsp)
	movb	$0, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$167:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$165:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$155
L_crypto_xkem_keypair_derand_jazz$156:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$164:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$157
L_crypto_xkem_keypair_derand_jazz$158:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$159
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$157
L_crypto_xkem_keypair_derand_jazz$159:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$163
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$163:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$157
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$157
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$162:
L_crypto_xkem_keypair_derand_jazz$161:
L_crypto_xkem_keypair_derand_jazz$160:
L_crypto_xkem_keypair_derand_jazz$157:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$158
L_crypto_xkem_keypair_derand_jazz$155:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$156
	movq	$0, %rax
	leaq	5696(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$153
L_crypto_xkem_keypair_derand_jazz$154:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$153:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$154
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$151
	movb	$0, 9936(%rsp)
	movb	$2, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$152
L_crypto_xkem_keypair_derand_jazz$151:
	movb	$2, 9936(%rsp)
	movb	$0, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$152:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$150:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$140
L_crypto_xkem_keypair_derand_jazz$141:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$149:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$142
L_crypto_xkem_keypair_derand_jazz$143:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$144
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$142
L_crypto_xkem_keypair_derand_jazz$144:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$148
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$148:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$142
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$142
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$147:
L_crypto_xkem_keypair_derand_jazz$146:
L_crypto_xkem_keypair_derand_jazz$145:
L_crypto_xkem_keypair_derand_jazz$142:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$143
L_crypto_xkem_keypair_derand_jazz$140:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$141
	movq	$0, %rax
	leaq	6208(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$138
L_crypto_xkem_keypair_derand_jazz$139:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$138:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$139
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$136
	movb	$1, 9936(%rsp)
	movb	$0, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$137
L_crypto_xkem_keypair_derand_jazz$136:
	movb	$0, 9936(%rsp)
	movb	$1, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$137:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$135:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$125
L_crypto_xkem_keypair_derand_jazz$126:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$134:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$127
L_crypto_xkem_keypair_derand_jazz$128:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$129
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$127
L_crypto_xkem_keypair_derand_jazz$129:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$133
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$133:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$127
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$127
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$132:
L_crypto_xkem_keypair_derand_jazz$131:
L_crypto_xkem_keypair_derand_jazz$130:
L_crypto_xkem_keypair_derand_jazz$127:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$128
L_crypto_xkem_keypair_derand_jazz$125:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$126
	movq	$0, %rax
	leaq	6720(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$123
L_crypto_xkem_keypair_derand_jazz$124:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$123:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$124
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$121
	movb	$1, 9936(%rsp)
	movb	$1, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$122
L_crypto_xkem_keypair_derand_jazz$121:
	movb	$1, 9936(%rsp)
	movb	$1, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$122:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$120:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$110
L_crypto_xkem_keypair_derand_jazz$111:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$119:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$112
L_crypto_xkem_keypair_derand_jazz$113:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$114
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$112
L_crypto_xkem_keypair_derand_jazz$114:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$118
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$118:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$112
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$112
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$117:
L_crypto_xkem_keypair_derand_jazz$116:
L_crypto_xkem_keypair_derand_jazz$115:
L_crypto_xkem_keypair_derand_jazz$112:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$113
L_crypto_xkem_keypair_derand_jazz$110:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$111
	movq	$0, %rax
	leaq	7232(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$108
L_crypto_xkem_keypair_derand_jazz$109:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$108:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$109
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$106
	movb	$1, 9936(%rsp)
	movb	$2, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$107
L_crypto_xkem_keypair_derand_jazz$106:
	movb	$2, 9936(%rsp)
	movb	$1, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$107:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$105:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$95
L_crypto_xkem_keypair_derand_jazz$96:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$104:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$97
L_crypto_xkem_keypair_derand_jazz$98:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$99
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$97
L_crypto_xkem_keypair_derand_jazz$99:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$103
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$103:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$97
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$97
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$102:
L_crypto_xkem_keypair_derand_jazz$101:
L_crypto_xkem_keypair_derand_jazz$100:
L_crypto_xkem_keypair_derand_jazz$97:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$98
L_crypto_xkem_keypair_derand_jazz$95:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$96
	movq	$0, %rax
	leaq	7744(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$93
L_crypto_xkem_keypair_derand_jazz$94:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$93:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$94
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$91
	movb	$2, 9936(%rsp)
	movb	$0, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$92
L_crypto_xkem_keypair_derand_jazz$91:
	movb	$0, 9936(%rsp)
	movb	$2, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$92:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$90:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$80
L_crypto_xkem_keypair_derand_jazz$81:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$89:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$82
L_crypto_xkem_keypair_derand_jazz$83:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$84
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$82
L_crypto_xkem_keypair_derand_jazz$84:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$88
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$88:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$82
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$82
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$87:
L_crypto_xkem_keypair_derand_jazz$86:
L_crypto_xkem_keypair_derand_jazz$85:
L_crypto_xkem_keypair_derand_jazz$82:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$83
L_crypto_xkem_keypair_derand_jazz$80:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$81
	movq	$0, %rax
	leaq	8256(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$78
L_crypto_xkem_keypair_derand_jazz$79:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$78:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$79
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$76
	movb	$2, 9936(%rsp)
	movb	$1, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$77
L_crypto_xkem_keypair_derand_jazz$76:
	movb	$1, 9936(%rsp)
	movb	$2, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$77:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$75:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$65
L_crypto_xkem_keypair_derand_jazz$66:
	movq	%rax, 9864(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$74:
	leaq	8(%rsp), %rsp
	movq	9864(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$67
L_crypto_xkem_keypair_derand_jazz$68:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$69
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$67
L_crypto_xkem_keypair_derand_jazz$69:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$73
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$73:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$67
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$67
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$72:
L_crypto_xkem_keypair_derand_jazz$71:
L_crypto_xkem_keypair_derand_jazz$70:
L_crypto_xkem_keypair_derand_jazz$67:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$68
L_crypto_xkem_keypair_derand_jazz$65:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$66
	movq	$0, %rax
	leaq	8768(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$63
L_crypto_xkem_keypair_derand_jazz$64:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$63:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$64
	movq	9856(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$61
	movb	$2, 9936(%rsp)
	movb	$2, 9937(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$62
L_crypto_xkem_keypair_derand_jazz$61:
	movb	$2, 9936(%rsp)
	movb	$2, 9937(%rsp)
L_crypto_xkem_keypair_derand_jazz$62:
	leaq	10176(%rsp), %rax
	leaq	9904(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$60:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$50
L_crypto_xkem_keypair_derand_jazz$51:
	movq	%rax, 9856(%rsp)
	leaq	10176(%rsp), %rax
	leaq	10008(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$59:
	leaq	8(%rsp), %rsp
	movq	9856(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$52
L_crypto_xkem_keypair_derand_jazz$53:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$54
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$52
L_crypto_xkem_keypair_derand_jazz$54:
	movzbw	10008(%rsp,%rcx), %dx
	movzbw	10009(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10010(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$58
	movw	%dx, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$58:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$52
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$52
	movw	%di, 64(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$57:
L_crypto_xkem_keypair_derand_jazz$56:
L_crypto_xkem_keypair_derand_jazz$55:
L_crypto_xkem_keypair_derand_jazz$52:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$53
L_crypto_xkem_keypair_derand_jazz$50:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$51
	movq	$0, %rax
	leaq	9280(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$48
L_crypto_xkem_keypair_derand_jazz$49:
	movw	64(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$48:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$49
	leaq	5184(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$47:
	leaq	5696(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$46:
	leaq	6208(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$45:
	leaq	6720(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$44:
	leaq	7232(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$43:
	leaq	7744(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$42:
	leaq	8256(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$41:
	leaq	8768(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$40:
	leaq	9280(%rsp), %rax
	call	L_nttunpack$1
L_crypto_xkem_keypair_derand_jazz$39:
	movb	$0, %r8b
	leaq	2112(%rsp), %rax
	leaq	2624(%rsp), %rcx
	leaq	3136(%rsp), %rdx
	leaq	576(%rsp), %rsi
	leaq	32(%rsp), %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_keypair_derand_jazz$38:
	leaq	1496(%rsp), %rsp
	movb	$4, %r8b
	leaq	1088(%rsp), %rax
	leaq	1600(%rsp), %rcx
	leaq	3648(%rsp), %rdx
	leaq	4160(%rsp), %rsi
	leaq	32(%rsp), %rdi
	leaq	-1496(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
L_crypto_xkem_keypair_derand_jazz$37:
	leaq	1496(%rsp), %rsp
	leaq	2112(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$36:
	leaq	2624(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$35:
	leaq	3136(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$34:
	leaq	576(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$33:
	leaq	1088(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$32:
	leaq	1600(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$31:
	leaq	3648(%rsp), %rcx
	leaq	5184(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$30:
	leaq	64(%rsp), %rcx
	leaq	5696(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$29:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$28:
	leaq	64(%rsp), %rcx
	leaq	6208(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$27:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$26:
	leaq	3648(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$25:
	leaq	4160(%rsp), %rcx
	leaq	6720(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$24:
	leaq	64(%rsp), %rcx
	leaq	7232(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$23:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$22:
	leaq	64(%rsp), %rcx
	leaq	7744(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$21:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$20:
	leaq	4160(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$19:
	leaq	4672(%rsp), %rcx
	leaq	8256(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$18:
	leaq	64(%rsp), %rcx
	leaq	8768(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$17:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$16:
	leaq	64(%rsp), %rcx
	leaq	9280(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$15:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$14:
	leaq	4672(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$13:
	leaq	3648(%rsp), %rcx
	leaq	576(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$12:
	leaq	4160(%rsp), %rcx
	leaq	1088(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$11:
	leaq	4672(%rsp), %rcx
	leaq	1600(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$10:
	leaq	3648(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4160(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4672(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	9840(%rsp), %rax
	movq	9848(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	2112(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$9:
	addq	$384, %rdx
	leaq	2624(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$8:
	addq	$384, %rdx
	leaq	3136(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$7:
	movq	%rax, %rdx
	leaq	3648(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$6:
	addq	$384, %rdx
	leaq	4160(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$5:
	addq	$384, %rdx
	leaq	4672(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$4:
	addq	$1152, %rax
	movq	9872(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9880(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9888(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	9896(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9832(%rsp), %rax
	addq	$1152, %rax
	movq	9824(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 64(%rax)
	movq	72(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	88(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	96(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movq	104(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	112(%rcx), %rdx
	movq	%rdx, 112(%rax)
	movq	120(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	128(%rcx), %rdx
	movq	%rdx, 128(%rax)
	movq	136(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	144(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	152(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	160(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	168(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	176(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	184(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	192(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	200(%rcx), %rdx
	movq	%rdx, 200(%rax)
	movq	208(%rcx), %rdx
	movq	%rdx, 208(%rax)
	movq	216(%rcx), %rdx
	movq	%rdx, 216(%rax)
	movq	224(%rcx), %rdx
	movq	%rdx, 224(%rax)
	movq	232(%rcx), %rdx
	movq	%rdx, 232(%rax)
	movq	240(%rcx), %rdx
	movq	%rdx, 240(%rax)
	movq	248(%rcx), %rdx
	movq	%rdx, 248(%rax)
	movq	256(%rcx), %rdx
	movq	%rdx, 256(%rax)
	movq	264(%rcx), %rdx
	movq	%rdx, 264(%rax)
	movq	272(%rcx), %rdx
	movq	%rdx, 272(%rax)
	movq	280(%rcx), %rdx
	movq	%rdx, 280(%rax)
	movq	288(%rcx), %rdx
	movq	%rdx, 288(%rax)
	movq	296(%rcx), %rdx
	movq	%rdx, 296(%rax)
	movq	304(%rcx), %rdx
	movq	%rdx, 304(%rax)
	movq	312(%rcx), %rdx
	movq	%rdx, 312(%rax)
	movq	320(%rcx), %rdx
	movq	%rdx, 320(%rax)
	movq	328(%rcx), %rdx
	movq	%rdx, 328(%rax)
	movq	336(%rcx), %rdx
	movq	%rdx, 336(%rax)
	movq	344(%rcx), %rdx
	movq	%rdx, 344(%rax)
	movq	352(%rcx), %rdx
	movq	%rdx, 352(%rax)
	movq	360(%rcx), %rdx
	movq	%rdx, 360(%rax)
	movq	368(%rcx), %rdx
	movq	%rdx, 368(%rax)
	movq	376(%rcx), %rdx
	movq	%rdx, 376(%rax)
	movq	384(%rcx), %rdx
	movq	%rdx, 384(%rax)
	movq	392(%rcx), %rdx
	movq	%rdx, 392(%rax)
	movq	400(%rcx), %rdx
	movq	%rdx, 400(%rax)
	movq	408(%rcx), %rdx
	movq	%rdx, 408(%rax)
	movq	416(%rcx), %rdx
	movq	%rdx, 416(%rax)
	movq	424(%rcx), %rdx
	movq	%rdx, 424(%rax)
	movq	432(%rcx), %rdx
	movq	%rdx, 432(%rax)
	movq	440(%rcx), %rdx
	movq	%rdx, 440(%rax)
	movq	448(%rcx), %rdx
	movq	%rdx, 448(%rax)
	movq	456(%rcx), %rdx
	movq	%rdx, 456(%rax)
	movq	464(%rcx), %rdx
	movq	%rdx, 464(%rax)
	movq	472(%rcx), %rdx
	movq	%rdx, 472(%rax)
	movq	480(%rcx), %rdx
	movq	%rdx, 480(%rax)
	movq	488(%rcx), %rdx
	movq	%rdx, 488(%rax)
	movq	496(%rcx), %rdx
	movq	%rdx, 496(%rax)
	movq	504(%rcx), %rdx
	movq	%rdx, 504(%rax)
	movq	512(%rcx), %rdx
	movq	%rdx, 512(%rax)
	movq	520(%rcx), %rdx
	movq	%rdx, 520(%rax)
	movq	528(%rcx), %rdx
	movq	%rdx, 528(%rax)
	movq	536(%rcx), %rdx
	movq	%rdx, 536(%rax)
	movq	544(%rcx), %rdx
	movq	%rdx, 544(%rax)
	movq	552(%rcx), %rdx
	movq	%rdx, 552(%rax)
	movq	560(%rcx), %rdx
	movq	%rdx, 560(%rax)
	movq	568(%rcx), %rdx
	movq	%rdx, 568(%rax)
	movq	576(%rcx), %rdx
	movq	%rdx, 576(%rax)
	movq	584(%rcx), %rdx
	movq	%rdx, 584(%rax)
	movq	592(%rcx), %rdx
	movq	%rdx, 592(%rax)
	movq	600(%rcx), %rdx
	movq	%rdx, 600(%rax)
	movq	608(%rcx), %rdx
	movq	%rdx, 608(%rax)
	movq	616(%rcx), %rdx
	movq	%rdx, 616(%rax)
	movq	624(%rcx), %rdx
	movq	%rdx, 624(%rax)
	movq	632(%rcx), %rdx
	movq	%rdx, 632(%rax)
	movq	640(%rcx), %rdx
	movq	%rdx, 640(%rax)
	movq	648(%rcx), %rdx
	movq	%rdx, 648(%rax)
	movq	656(%rcx), %rdx
	movq	%rdx, 656(%rax)
	movq	664(%rcx), %rdx
	movq	%rdx, 664(%rax)
	movq	672(%rcx), %rdx
	movq	%rdx, 672(%rax)
	movq	680(%rcx), %rdx
	movq	%rdx, 680(%rax)
	movq	688(%rcx), %rdx
	movq	%rdx, 688(%rax)
	movq	696(%rcx), %rdx
	movq	%rdx, 696(%rax)
	movq	704(%rcx), %rdx
	movq	%rdx, 704(%rax)
	movq	712(%rcx), %rdx
	movq	%rdx, 712(%rax)
	movq	720(%rcx), %rdx
	movq	%rdx, 720(%rax)
	movq	728(%rcx), %rdx
	movq	%rdx, 728(%rax)
	movq	736(%rcx), %rdx
	movq	%rdx, 736(%rax)
	movq	744(%rcx), %rdx
	movq	%rdx, 744(%rax)
	movq	752(%rcx), %rdx
	movq	%rdx, 752(%rax)
	movq	760(%rcx), %rdx
	movq	%rdx, 760(%rax)
	movq	768(%rcx), %rdx
	movq	%rdx, 768(%rax)
	movq	776(%rcx), %rdx
	movq	%rdx, 776(%rax)
	movq	784(%rcx), %rdx
	movq	%rdx, 784(%rax)
	movq	792(%rcx), %rdx
	movq	%rdx, 792(%rax)
	movq	800(%rcx), %rdx
	movq	%rdx, 800(%rax)
	movq	808(%rcx), %rdx
	movq	%rdx, 808(%rax)
	movq	816(%rcx), %rdx
	movq	%rdx, 816(%rax)
	movq	824(%rcx), %rdx
	movq	%rdx, 824(%rax)
	movq	832(%rcx), %rdx
	movq	%rdx, 832(%rax)
	movq	840(%rcx), %rdx
	movq	%rdx, 840(%rax)
	movq	848(%rcx), %rdx
	movq	%rdx, 848(%rax)
	movq	856(%rcx), %rdx
	movq	%rdx, 856(%rax)
	movq	864(%rcx), %rdx
	movq	%rdx, 864(%rax)
	movq	872(%rcx), %rdx
	movq	%rdx, 872(%rax)
	movq	880(%rcx), %rdx
	movq	%rdx, 880(%rax)
	movq	888(%rcx), %rdx
	movq	%rdx, 888(%rax)
	movq	896(%rcx), %rdx
	movq	%rdx, 896(%rax)
	movq	904(%rcx), %rdx
	movq	%rdx, 904(%rax)
	movq	912(%rcx), %rdx
	movq	%rdx, 912(%rax)
	movq	920(%rcx), %rdx
	movq	%rdx, 920(%rax)
	movq	928(%rcx), %rdx
	movq	%rdx, 928(%rax)
	movq	936(%rcx), %rdx
	movq	%rdx, 936(%rax)
	movq	944(%rcx), %rdx
	movq	%rdx, 944(%rax)
	movq	952(%rcx), %rdx
	movq	%rdx, 952(%rax)
	movq	960(%rcx), %rdx
	movq	%rdx, 960(%rax)
	movq	968(%rcx), %rdx
	movq	%rdx, 968(%rax)
	movq	976(%rcx), %rdx
	movq	%rdx, 976(%rax)
	movq	984(%rcx), %rdx
	movq	%rdx, 984(%rax)
	movq	992(%rcx), %rdx
	movq	%rdx, 992(%rax)
	movq	1000(%rcx), %rdx
	movq	%rdx, 1000(%rax)
	movq	1008(%rcx), %rdx
	movq	%rdx, 1008(%rax)
	movq	1016(%rcx), %rdx
	movq	%rdx, 1016(%rax)
	movq	1024(%rcx), %rdx
	movq	%rdx, 1024(%rax)
	movq	1032(%rcx), %rdx
	movq	%rdx, 1032(%rax)
	movq	1040(%rcx), %rdx
	movq	%rdx, 1040(%rax)
	movq	1048(%rcx), %rdx
	movq	%rdx, 1048(%rax)
	movq	1056(%rcx), %rdx
	movq	%rdx, 1056(%rax)
	movq	1064(%rcx), %rdx
	movq	%rdx, 1064(%rax)
	movq	1072(%rcx), %rdx
	movq	%rdx, 1072(%rax)
	movq	1080(%rcx), %rdx
	movq	%rdx, 1080(%rax)
	movq	1088(%rcx), %rdx
	movq	%rdx, 1088(%rax)
	movq	1096(%rcx), %rdx
	movq	%rdx, 1096(%rax)
	movq	1104(%rcx), %rdx
	movq	%rdx, 1104(%rax)
	movq	1112(%rcx), %rdx
	movq	%rdx, 1112(%rax)
	movq	1120(%rcx), %rdx
	movq	%rdx, 1120(%rax)
	movq	1128(%rcx), %rdx
	movq	%rdx, 1128(%rax)
	movq	1136(%rcx), %rdx
	movq	%rdx, 1136(%rax)
	movq	1144(%rcx), %rdx
	movq	%rdx, 1144(%rax)
	movq	1152(%rcx), %rdx
	movq	%rdx, 1152(%rax)
	movq	1160(%rcx), %rdx
	movq	%rdx, 1160(%rax)
	movq	1168(%rcx), %rdx
	movq	%rdx, 1168(%rax)
	movq	1176(%rcx), %rcx
	movq	%rcx, 1176(%rax)
	addq	$2336, 9832(%rsp)
	movq	9824(%rsp), %r8
	movq	$1184, %rax
	leaq	9872(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
L_crypto_xkem_keypair_derand_jazz$3:
	leaq	232(%rsp), %rsp
	movq	9832(%rsp), %rax
	movq	9872(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9880(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	9888(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	9896(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	9816(%rsp), %rcx
	leaq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	9792(%rsp), %rax
	movq	9808(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	1184(%rax), %rax
	leaq	64(%rcx), %rcx
	call	Lxwing_x25519_base_p_rp$1
L_crypto_xkem_keypair_derand_jazz$2:
	movq	9792(%rsp), %rax
	movq	9800(%rsp), %rcx
	movq	9808(%rsp), %rdx
	lfence
	movq	$0, %rsi
	leaq	64(%rdx), %rdx
	leaq	1184(%rax), %rax
	movq	(%rdx), %rsi
	movq	%rsi, 2400(%rcx)
	movq	(%rax), %rsi
	movq	%rsi, 2432(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 2408(%rcx)
	movq	8(%rax), %rsi
	movq	%rsi, 2440(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 2416(%rcx)
	movq	16(%rax), %rsi
	movq	%rsi, 2448(%rcx)
	movq	24(%rdx), %rdx
	movq	%rdx, 2424(%rcx)
	movq	24(%rax), %rax
	movq	%rax, 2456(%rcx)
	ret
L_xwing_sha3$1:
	movq	%rdi, %mm0
	movb	glob_data + 3188(%rip), %dil
	movb	%dil, 8(%rsp)
	movb	glob_data + 3189(%rip), %dil
	movb	%dil, 9(%rsp)
	movb	glob_data + 3190(%rip), %dil
	movb	%dil, 10(%rsp)
	movb	glob_data + 3191(%rip), %dil
	movb	%dil, 11(%rsp)
	movb	glob_data + 3192(%rip), %dil
	movb	%dil, 12(%rsp)
	movb	glob_data + 3193(%rip), %dil
	movb	%dil, 13(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 14(%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, 46(%rsp)
	movq	(%rcx), %rdi
	movq	%rdi, 78(%rsp)
	movq	(%rdx), %rdi
	movq	%rdi, 110(%rsp)
	movq	8(%rax), %rdi
	movq	%rdi, 22(%rsp)
	movq	8(%rsi), %rdi
	movq	%rdi, 54(%rsp)
	movq	8(%rcx), %rdi
	movq	%rdi, 86(%rsp)
	movq	8(%rdx), %rdi
	movq	%rdi, 118(%rsp)
	movq	16(%rax), %rdi
	movq	%rdi, 30(%rsp)
	movq	16(%rsi), %rdi
	movq	%rdi, 62(%rsp)
	movq	16(%rcx), %rdi
	movq	%rdi, 94(%rsp)
	movq	16(%rdx), %rdi
	movq	%rdi, 126(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 38(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 70(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 102(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 134(%rsp)
	movw	$0, 142(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 200(%rsp)
	xorb	$6, 142(%rsp)
	movb	$128, 143(%rsp)
	leaq	8(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_xwing_sha3$2:
	leaq	208(%rsp), %rsp
	movq	%mm0, %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	ret
Lxwing_x25519_rp_p_p$1:
	movq	%rcx, %mm0
	movq	(%rax), %rdi
	movq	8(%rax), %r8
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rsi
	movq	24(%rdx), %r11
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Lxwing_x25519_rp_p_p$2:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rcx, 24(%rax)
	ret
Lxwing_x25519_rp_rp_p$1:
	movq	%rcx, %mm0
	movq	(%rax), %rdi
	movq	8(%rax), %r8
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rsi
	movq	24(%rdx), %r11
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Lxwing_x25519_rp_rp_p$2:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rcx, 24(%rax)
	ret
Lxwing_x25519_base_p_rp$1:
	movq	%rax, %mm0
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	16(%rcx), %rdi
	movq	24(%rcx), %rcx
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4_base$1
Lxwing_x25519_base_p_rp$2:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%rdi, (%rax)
	movq	%r10, 8(%rax)
	movq	%r11, 16(%rax)
	movq	%rcx, 24(%rax)
	ret
_jade_scalarmult_curve25519_amd64_ref4_base:
jade_scalarmult_curve25519_amd64_ref4_base:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %mm0
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rdi
	movq	24(%rsi), %rcx
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4_base$1
Ljade_scalarmult_curve25519_amd64_ref4_base$1:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%rdi, (%rax)
	movq	%r10, 8(%rax)
	movq	%r11, 16(%rax)
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsp
	ret
_jade_scalarmult_curve25519_amd64_ref4:
jade_scalarmult_curve25519_amd64_ref4:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %mm0
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	movq	16(%rsi), %r9
	movq	24(%rsi), %r10
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %rsi
	movq	24(%rdx), %r11
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Ljade_scalarmult_curve25519_amd64_ref4$1:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rcx, 24(%rax)
	xorq	%rax, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsp
	ret
L_curve25519_ref4_base$1:
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	andb	$248, 16(%rsp)
	andb	$127, 47(%rsp)
	orb 	$64, 47(%rsp)
	movq	$9, %rax
	movq	$0, %rcx
	movq	$0, %rdx
	movq	$0, %rsi
	xorq	%r8, %r8
	movq	$1, 48(%rsp)
	movq	$0, %rdi
	movq	%rax, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rsi, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r8, %r9
	movq	%r8, 120(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r8, %rbx
	movq	%r8, 128(%rsp)
	movq	%r8, 72(%rsp)
	movq	%r8, %r13
	movq	%r8, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movq	%rdx, 160(%rsp)
	movq	%rsi, 168(%rsp)
	movq	$255, %rcx
	movq	$0, 8(%rsp)
L_curve25519_ref4_base$27:
	addq	$-1, %rcx
	movq	%rcx, %mm1
	movq	%rcx, %rax
	shrq	$3, %rax
	movzbq	16(%rsp,%rax), %rax
	andq	$7, %rcx
	shrq	%cl, %rax
	andq	$1, %rax
	movq	8(%rsp), %rdx
	xorq	%rax, %rdx
	xorq	%rcx, %rcx
	subq	%rdx, %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	128(%rsp), %r8
	movq	136(%rsp), %r10
	movq	%rdi, %r11
	movq	%r9, %rbp
	movq	%rbx, %r12
	movq	%r13, %r14
	xorq	%rdx, %r11
	xorq	%rsi, %rbp
	xorq	%r8, %r12
	xorq	%r10, %r14
	andq	%rcx, %r11
	andq	%rcx, %rbp
	andq	%rcx, %r12
	andq	%rcx, %r14
	xorq	%r11, %rdi
	xorq	%r11, %rdx
	movq	%rdx, 112(%rsp)
	xorq	%rbp, %r9
	xorq	%rbp, %rsi
	movq	%rsi, 120(%rsp)
	xorq	%r12, %rbx
	xorq	%r12, %r8
	movq	%r8, 128(%rsp)
	xorq	%r14, %r13
	xorq	%r14, %r10
	movq	%r10, 136(%rsp)
	movq	80(%rsp), %r8
	movq	88(%rsp), %r10
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	48(%rsp), %r11
	movq	%r8, %rbp
	xorq	%r11, %rbp
	andq	%rcx, %rbp
	xorq	%rbp, %r11
	xorq	%rbp, %r8
	movq	%r11, 48(%rsp)
	movq	%r8, 80(%rsp)
	movq	56(%rsp), %r8
	movq	%r10, %r11
	xorq	%r8, %r11
	andq	%rcx, %r11
	xorq	%r11, %r8
	xorq	%r11, %r10
	movq	%r8, 56(%rsp)
	movq	%r10, 88(%rsp)
	movq	64(%rsp), %r8
	movq	%rdx, %r10
	xorq	%r8, %r10
	andq	%rcx, %r10
	xorq	%r10, %r8
	xorq	%r10, %rdx
	movq	%r8, 64(%rsp)
	movq	%rdx, 96(%rsp)
	movq	72(%rsp), %rdx
	movq	%rsi, %r8
	xorq	%rdx, %r8
	andq	%rcx, %r8
	xorq	%r8, %rdx
	xorq	%r8, %rsi
	movq	%rdx, 72(%rsp)
	movq	%rsi, 104(%rsp)
	movq	%rax, 8(%rsp)
	xorq	%rax, %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rsi
	movq	72(%rsp), %r8
	subq	%rdi, %rcx
	sbbq	%r9, %rdx
	sbbq	%rbx, %rsi
	sbbq	%r13, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	$0, %r8
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	movq	%rcx, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%rsi, 192(%rsp)
	movq	%r8, 200(%rsp)
	xorq	%rax, %rax
	addq	48(%rsp), %rdi
	adcq	56(%rsp), %r9
	adcq	64(%rsp), %rbx
	adcq	72(%rsp), %r13
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rdi
	adcq	$0, %r9
	adcq	$0, %rbx
	adcq	$0, %r13
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rdi
	movq	%rdi, 208(%rsp)
	movq	%r9, 216(%rsp)
	movq	%rbx, 224(%rsp)
	movq	%r13, 232(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	112(%rsp), %rax
	sbbq	120(%rsp), %rcx
	sbbq	128(%rsp), %rdx
	sbbq	136(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 240(%rsp)
	movq	%rcx, 248(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	112(%rsp), %rax
	adcq	120(%rsp), %rcx
	adcq	128(%rsp), %rdx
	adcq	136(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rdx, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	$0, %rbx
	movq	$0, %rdi
	movq	$0, %rsi
	movq	$0, %r8
	movq	$0, %r11
	movq	$0, %rcx
	movq	208(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %r12
	movq	%rdx, %rbp
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rbx
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	%rdx, %rdi
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	216(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %r8
	movq	224(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %r11
	movq	232(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %rcx
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%r8, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r8
	movq	%r11, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %r11
	movq	%rcx, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r12, %rsi
	adcq	%rbp, %r10
	adcq	%rbx, %r8
	adcq	%rdi, %r11
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %r8
	adcq	%rcx, %r11
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	%r10, 248(%rsp)
	movq	%r8, 256(%rsp)
	movq	%r11, 264(%rsp)
	movq	$0, %rsi
	movq	$0, %rdi
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %r12
	movq	$0, %r11
	movq	272(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %rbp
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rdi
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %r8
	movq	280(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rbx
	movq	288(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %r12
	movq	296(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%rdx, %r11
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r12
	movq	%r11, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rbp, %r10
	adcq	%rsi, %rbx
	adcq	%rdi, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movq	%r12, 296(%rsp)
	movq	$0, %rbx
	movq	$0, %rcx
	movq	216(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r11
	movq	224(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %r12
	movq	%rdx, %rsi
	movq	232(%rsp), %rax
	mulq	224(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %r8
	movq	224(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %r12
	adcq	%rcx, %rsi
	movq	232(%rsp), %rax
	mulq	216(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rdi
	adcq	%rcx, %r8
	movq	232(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %rsi
	adcq	%rcx, %rdi
	adcq	%rcx, %r8
	adcq	%rcx, %rbx
	addq	%rbp, %rbp
	adcq	%r11, %r11
	adcq	%r12, %r12
	adcq	%rsi, %rsi
	adcq	%rdi, %rdi
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	movq	208(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	216(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	224(%rsp), %rax
	mulq	224(%rsp)
	addq	%r9, %rbp
	adcq	%r10, %r11
	adcq	%r13, %r12
	adcq	%rax, %rsi
	adcq	%rdx, %rdi
	adcq	$0, %r8
	adcq	$0, %rbx
	movq	232(%rsp), %rax
	mulq	232(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%rdi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rdi
	movq	%r8, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r8
	movq	%rbx, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rsi
	adcq	%rbp, %r10
	adcq	%r11, %rdi
	adcq	%r12, %r8
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %rdi
	adcq	%rcx, %r8
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 208(%rsp)
	movq	%r10, 216(%rsp)
	movq	%rdi, 224(%rsp)
	movq	%r8, 232(%rsp)
	movq	$0, %rdi
	movq	$0, %rcx
	movq	184(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %r11
	movq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r8
	movq	200(%rsp), %rax
	mulq	192(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	192(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	adcq	%rcx, %r8
	movq	200(%rsp), %rax
	mulq	184(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	%rcx, %r12
	movq	200(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rdi
	addq	%r11, %r11
	adcq	%rsi, %rsi
	adcq	%rbp, %rbp
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	adcq	%r12, %r12
	adcq	%rdi, %rdi
	movq	176(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	184(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	192(%rsp), %rax
	mulq	192(%rsp)
	addq	%r9, %r11
	adcq	%r10, %rsi
	adcq	%r13, %rbp
	adcq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	$0, %r12
	adcq	$0, %rdi
	movq	200(%rsp), %rax
	mulq	200(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %rdi
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r12
	movq	%rdi, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r11, %r10
	adcq	%rsi, %rbx
	adcq	%rbp, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 176(%rsp)
	movq	%r10, 184(%rsp)
	movq	%rbx, 192(%rsp)
	movq	%r12, 200(%rsp)
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rdx
	movq	264(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	272(%rsp), %rax
	adcq	280(%rsp), %rcx
	adcq	288(%rsp), %rdx
	adcq	296(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 304(%rsp)
	movq	%rcx, 312(%rsp)
	movq	%rdx, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rdx
	movq	264(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	272(%rsp), %rax
	sbbq	280(%rsp), %rcx
	sbbq	288(%rsp), %rdx
	sbbq	296(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rdx, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	$0, %r8
	movq	$0, %r11
	movq	$0, %rdi
	movq	$0, %rbx
	movq	$0, %rbp
	movq	$0, %rsi
	movq	208(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %r12
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r8
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	%rdx, %r11
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rdi
	movq	216(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	adcq	%rdx, %rbx
	movq	224(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rbp
	movq	232(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	adcq	%rdx, %rsi
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rbp, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rbp
	movq	%rsi, %rax
	adcq	%rdx, %rbp
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%r12, %r10
	adcq	%r8, %rbx
	adcq	%r11, %rbp
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rbp
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%rdi, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	208(%rsp), %rax
	movq	216(%rsp), %rcx
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	176(%rsp), %rax
	sbbq	184(%rsp), %rcx
	sbbq	192(%rsp), %rdx
	sbbq	200(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 176(%rsp)
	movq	%rcx, 184(%rsp)
	movq	%rdx, 192(%rsp)
	movq	%rsi, 200(%rsp)
	movq	$0, %r8
	movq	$0, %rcx
	movq	280(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r11
	movq	288(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %r12
	movq	%rdx, %rdi
	movq	296(%rsp), %rax
	mulq	288(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rsi
	movq	288(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %r12
	adcq	%rcx, %rdi
	movq	296(%rsp), %rax
	mulq	280(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	%rcx, %rsi
	movq	296(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %r8
	addq	%rbp, %rbp
	adcq	%r11, %r11
	adcq	%r12, %r12
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	adcq	%rsi, %rsi
	adcq	%r8, %r8
	movq	272(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	280(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	288(%rsp), %rax
	mulq	288(%rsp)
	addq	%r9, %rbp
	adcq	%r10, %r11
	adcq	%r13, %r12
	adcq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	$0, %rsi
	adcq	$0, %r8
	movq	296(%rsp), %rax
	mulq	296(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %r8
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rsi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rsi
	movq	%r8, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%rbp, %r10
	adcq	%r11, %rbx
	adcq	%r12, %rsi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%rdi, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	$121665, %rdi
	movq	176(%rsp), %rax
	mulq	%rdi
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	184(%rsp), %rax
	mulq	%rdi
	movq	%rax, %r10
	movq	%rdx, %r11
	movq	200(%rsp), %rax
	mulq	%rdi
	movq	%rax, %rdi
	movq	%rdx, %rax
	addq	%r10, %rsi
	adcq	%r11, %r8
	adcq	%rdi, %r9
	adcq	$0, %rax
	movq	$38, %rdx
	mulq	%rdx
	addq	%rax, %rcx
	adcq	$0, %rsi
	adcq	$0, %r8
	adcq	$0, %r9
	movq	$38, %rax
	movq	$0, %rdx
	cmovnb	%rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 240(%rsp)
	movq	%rsi, 248(%rsp)
	movq	%r8, 256(%rsp)
	movq	%r9, 264(%rsp)
	movq	$0, %r12
	movq	$0, %rcx
	movq	312(%rsp), %rax
	mulq	304(%rsp)
	movq	%rax, %r11
	movq	%rdx, %rbp
	movq	320(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %r8
	movq	328(%rsp), %rax
	mulq	320(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %rbx
	movq	320(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	adcq	%rcx, %r8
	movq	328(%rsp), %rax
	mulq	312(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	%rcx, %rbx
	movq	328(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %r8
	adcq	%rcx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	addq	%r11, %r11
	adcq	%rbp, %rbp
	adcq	%rsi, %rsi
	adcq	%r8, %r8
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	adcq	%r12, %r12
	movq	304(%rsp), %rax
	mulq	304(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	312(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	320(%rsp), %rax
	mulq	320(%rsp)
	addq	%r9, %r11
	adcq	%r10, %rbp
	adcq	%r13, %rsi
	adcq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	$0, %rbx
	adcq	$0, %r12
	movq	328(%rsp), %rax
	mulq	328(%rsp)
	addq	%rax, %rbx
	adcq	%rdx, %r12
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rdi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rdi
	movq	%rbx, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r11, %r10
	adcq	%rbp, %rdi
	adcq	%rsi, %rbx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 80(%rsp)
	movq	%r10, 88(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%rbx, 104(%rsp)
	movq	208(%rsp), %rax
	movq	216(%rsp), %rcx
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	240(%rsp), %rax
	adcq	248(%rsp), %rcx
	adcq	256(%rsp), %rdx
	adcq	264(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 240(%rsp)
	movq	%rcx, 248(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	$0, %r11
	movq	$0, %r8
	movq	$0, %rcx
	movq	$0, %rsi
	movq	$0, %r12
	movq	$0, %rdi
	movq	144(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %r11
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %r8
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	%rdx, %rcx
	movq	152(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %rsi
	movq	160(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %r12
	movq	168(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%rdx, %rdi
	movq	$38, %r9
	movq	%rcx, %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %r10
	movq	%rsi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rsi
	movq	%r12, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r12
	movq	%rdi, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbx, %rcx
	adcq	%rbp, %r10
	adcq	%r11, %rsi
	adcq	%r8, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rdx
	addq	%rax, %rcx
	adcq	%rdx, %r10
	adcq	%rdx, %rsi
	adcq	%rdx, %r12
	adcq	%rdx, %rdx
	imulq	$38, %rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%r10, 120(%rsp)
	movq	%rsi, 128(%rsp)
	movq	%r12, 136(%rsp)
	movq	$0, %rsi
	movq	$0, %r10
	movq	$0, %rdi
	movq	$0, %rcx
	movq	$0, %r13
	movq	$0, %r11
	movq	176(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	movq	%rax, %rbp
	movq	%rdx, %r12
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %r12
	adcq	%rdx, %rsi
	movq	256(%rsp), %rax
	mulq	%r8
	addq	%rax, %rsi
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %r10
	adcq	%rdx, %rdi
	movq	184(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %r12
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r9, %rsi
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	256(%rsp), %rax
	mulq	%r8
	addq	%rax, %r10
	adcq	$0, %rdx
	addq	%r9, %r10
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r9, %rdi
	adcq	%rdx, %rcx
	movq	192(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %r10
	adcq	$0, %rdx
	addq	%r9, %r10
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	256(%rsp), %rax
	mulq	%r8
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r9, %rdi
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r9, %rcx
	adcq	%rdx, %r13
	movq	200(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %r10
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r9, %rdi
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	256(%rsp), %rax
	mulq	%r8
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r9, %rcx
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %r13
	adcq	$0, %rdx
	addq	%r9, %r13
	adcq	%rdx, %r11
	movq	$38, %r8
	movq	%rdi, %rax
	mulq	%r8
	movq	%rax, %rdi
	movq	%rdx, %r9
	movq	%rcx, %rax
	mulq	%r8
	addq	%rax, %r9
	movq	$0, %rbx
	movq	%r13, %rax
	adcq	%rdx, %rbx
	mulq	%r8
	addq	%rax, %rbx
	movq	$0, %r13
	movq	%r11, %rax
	adcq	%rdx, %r13
	mulq	%r8
	addq	%rax, %r13
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %rdi
	adcq	%r12, %r9
	adcq	%rsi, %rbx
	adcq	%r10, %r13
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r9
	adcq	%rcx, %rbx
	adcq	%rcx, %r13
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%mm1, %rcx
	cmpq	$0, %rcx
	jnbe	L_curve25519_ref4_base$27
	movq	%rdi, 112(%rsp)
	movq	%r9, 120(%rsp)
	movq	%rbx, 128(%rsp)
	movq	%r13, 136(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	80(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$26:
	movq	80(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$25:
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$24:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$23:
	leaq	80(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$22:
	movq	80(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$21:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$20:
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$19:
	movl	$4, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$18:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$17:
	movl	$10, %ebp
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$16:
	leaq	112(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$15:
	movl	$20, %ebp
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$14:
	leaq	112(%rsp), %r10
	leaq	16(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$13:
	movl	$10, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$12:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$11:
	movl	$50, %ebp
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$10:
	leaq	112(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$9:
	movl	$100, %ebp
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$8:
	leaq	112(%rsp), %r10
	leaq	16(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$7:
	movl	$50, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$6:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$5:
	movl	$4, %ebp
	leaq	144(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$4:
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4_base$3:
	leaq	144(%rsp), %r10
	leaq	80(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4_base$2:
	movq	$0, %rbp
	movq	$0, %rsi
	movq	$0, %rdi
	movq	$0, %r11
	movq	$0, %r8
	movq	$0, %rcx
	movq	48(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rbp
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rdi
	movq	56(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	adcq	%rdx, %r11
	movq	64(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %r8
	movq	72(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rcx
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r11
	movq	%r8, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r8
	movq	%rcx, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbx, %rdi
	adcq	%r12, %r10
	adcq	%rbp, %r11
	adcq	%rsi, %r8
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %r11
	adcq	%rcx, %r8
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	leaq	(%r8,%r8), %rax
	sarq	$63, %r8
	shrq	$1, %rax
	andq	$19, %r8
	addq	$19, %r8
	addq	%r8, %rdi
	adcq	$0, %r10
	adcq	$0, %r11
	adcq	$0, %rax
	leaq	(%rax,%rax), %rcx
	sarq	$63, %rax
	shrq	$1, %rcx
	notq	%rax
	andq	$19, %rax
	subq	%rax, %rdi
	sbbq	$0, %r10
	sbbq	$0, %r11
	sbbq	$0, %rcx
	ret
L_curve25519_ref4$1:
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 32(%rsp)
	movq	%r10, 40(%rsp)
	andb	$248, 16(%rsp)
	andb	$127, 47(%rsp)
	orb 	$64, 47(%rsp)
	movq	$9223372036854775807, %rdx
	andq	%rdx, %r11
	xorq	%rdx, %rdx
	movq	$1, 48(%rsp)
	movq	$0, %r8
	movq	%rax, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%r11, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rdx, %r9
	movq	%rdx, 120(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdx, %rbx
	movq	%rdx, 128(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rdx, %r12
	movq	%rdx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movq	%rsi, 160(%rsp)
	movq	%r11, 168(%rsp)
	movq	$255, %rcx
	movq	$0, 8(%rsp)
L_curve25519_ref4$27:
	addq	$-1, %rcx
	movq	%rcx, %mm1
	movq	%rcx, %rax
	shrq	$3, %rax
	movzbq	16(%rsp,%rax), %rax
	andq	$7, %rcx
	shrq	%cl, %rax
	andq	$1, %rax
	movq	8(%rsp), %rdx
	xorq	%rax, %rdx
	xorq	%rcx, %rcx
	subq	%rdx, %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	128(%rsp), %rdi
	movq	136(%rsp), %r10
	movq	%r8, %r11
	movq	%r9, %rbp
	movq	%rbx, %r13
	movq	%r12, %r14
	xorq	%rdx, %r11
	xorq	%rsi, %rbp
	xorq	%rdi, %r13
	xorq	%r10, %r14
	andq	%rcx, %r11
	andq	%rcx, %rbp
	andq	%rcx, %r13
	andq	%rcx, %r14
	xorq	%r11, %r8
	xorq	%r11, %rdx
	movq	%rdx, 112(%rsp)
	xorq	%rbp, %r9
	xorq	%rbp, %rsi
	movq	%rsi, 120(%rsp)
	xorq	%r13, %rbx
	xorq	%r13, %rdi
	movq	%rdi, 128(%rsp)
	xorq	%r14, %r12
	xorq	%r14, %r10
	movq	%r10, 136(%rsp)
	movq	80(%rsp), %rdi
	movq	88(%rsp), %r10
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	48(%rsp), %r11
	movq	%rdi, %rbp
	xorq	%r11, %rbp
	andq	%rcx, %rbp
	xorq	%rbp, %r11
	xorq	%rbp, %rdi
	movq	%r11, 48(%rsp)
	movq	%rdi, 80(%rsp)
	movq	56(%rsp), %rdi
	movq	%r10, %r11
	xorq	%rdi, %r11
	andq	%rcx, %r11
	xorq	%r11, %rdi
	xorq	%r11, %r10
	movq	%rdi, 56(%rsp)
	movq	%r10, 88(%rsp)
	movq	64(%rsp), %rdi
	movq	%rdx, %r10
	xorq	%rdi, %r10
	andq	%rcx, %r10
	xorq	%r10, %rdi
	xorq	%r10, %rdx
	movq	%rdi, 64(%rsp)
	movq	%rdx, 96(%rsp)
	movq	72(%rsp), %rdx
	movq	%rsi, %rdi
	xorq	%rdx, %rdi
	andq	%rcx, %rdi
	xorq	%rdi, %rdx
	xorq	%rdi, %rsi
	movq	%rdx, 72(%rsp)
	movq	%rsi, 104(%rsp)
	movq	%rax, 8(%rsp)
	xorq	%rax, %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdi
	subq	%r8, %rcx
	sbbq	%r9, %rdx
	sbbq	%rbx, %rsi
	sbbq	%r12, %rdi
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	$0, %rdi
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	movq	%rcx, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%rsi, 192(%rsp)
	movq	%rdi, 200(%rsp)
	xorq	%rax, %rax
	addq	48(%rsp), %r8
	adcq	56(%rsp), %r9
	adcq	64(%rsp), %rbx
	adcq	72(%rsp), %r12
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %r8
	adcq	$0, %r9
	adcq	$0, %rbx
	adcq	$0, %r12
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %r8
	movq	%r8, 208(%rsp)
	movq	%r9, 216(%rsp)
	movq	%rbx, 224(%rsp)
	movq	%r12, 232(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	112(%rsp), %rax
	sbbq	120(%rsp), %rcx
	sbbq	128(%rsp), %rdx
	sbbq	136(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 240(%rsp)
	movq	%rcx, 248(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	112(%rsp), %rax
	adcq	120(%rsp), %rcx
	adcq	128(%rsp), %rdx
	adcq	136(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rdx, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	$0, %r12
	movq	$0, %rdi
	movq	$0, %rsi
	movq	$0, %rbx
	movq	$0, %r11
	movq	$0, %rbp
	movq	208(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r12
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rdi
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	216(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %rbx
	movq	224(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %r11
	movq	232(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %rbp
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r11, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r11
	movq	%rbp, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r8, %rsi
	adcq	%rcx, %r10
	adcq	%r12, %rbx
	adcq	%rdi, %r11
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r11
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	%r10, 248(%rsp)
	movq	%rbx, 256(%rsp)
	movq	%r11, 264(%rsp)
	movq	$0, %rdi
	movq	$0, %r11
	movq	$0, %rsi
	movq	$0, %rbx
	movq	$0, %rbp
	movq	$0, %r8
	movq	272(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %r12
	movq	%rdx, %rcx
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %rdi
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %r11
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rsi
	movq	280(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %rbx
	movq	288(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rbp
	movq	296(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	adcq	%rdx, %r8
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rbp, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rbp
	movq	%r8, %rax
	adcq	%rdx, %rbp
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r12, %rsi
	adcq	%rcx, %r10
	adcq	%rdi, %rbx
	adcq	%r11, %rbp
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rbp
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movq	%rbp, 296(%rsp)
	movq	$0, %rbp
	movq	$0, %rcx
	movq	216(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %r12
	movq	%rdx, %r11
	movq	224(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %r8
	movq	%rdx, %rdi
	movq	232(%rsp), %rax
	mulq	224(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rsi
	movq	224(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %r8
	adcq	%rcx, %rdi
	movq	232(%rsp), %rax
	mulq	216(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	%rcx, %rsi
	movq	232(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %rbp
	addq	%r12, %r12
	adcq	%r11, %r11
	adcq	%r8, %r8
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	adcq	%rsi, %rsi
	adcq	%rbp, %rbp
	movq	208(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	216(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	224(%rsp), %rax
	mulq	224(%rsp)
	addq	%r9, %r12
	adcq	%r10, %r11
	adcq	%r13, %r8
	adcq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	$0, %rsi
	adcq	$0, %rbp
	movq	232(%rsp), %rax
	mulq	232(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rsi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rsi
	movq	%rbp, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%r12, %r10
	adcq	%r11, %rbx
	adcq	%r8, %rsi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%rdi, 208(%rsp)
	movq	%r10, 216(%rsp)
	movq	%rbx, 224(%rsp)
	movq	%rsi, 232(%rsp)
	movq	$0, %r12
	movq	$0, %rcx
	movq	184(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %rbp
	movq	192(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %r11
	movq	%rdx, %r8
	movq	200(%rsp), %rax
	mulq	192(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rdi
	movq	192(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r11
	adcq	%rcx, %r8
	movq	200(%rsp), %rax
	mulq	184(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	%rcx, %rdi
	movq	200(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	addq	%rsi, %rsi
	adcq	%rbp, %rbp
	adcq	%r11, %r11
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	adcq	%rdi, %rdi
	adcq	%r12, %r12
	movq	176(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	184(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	192(%rsp), %rax
	mulq	192(%rsp)
	addq	%r9, %rsi
	adcq	%r10, %rbp
	adcq	%r13, %r11
	adcq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	$0, %rdi
	adcq	$0, %r12
	movq	200(%rsp), %rax
	mulq	200(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %r12
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rdi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rdi
	movq	%r12, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rsi, %r10
	adcq	%rbp, %rbx
	adcq	%r11, %rdi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rdi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 176(%rsp)
	movq	%r10, 184(%rsp)
	movq	%rbx, 192(%rsp)
	movq	%rdi, 200(%rsp)
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rdx
	movq	264(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	272(%rsp), %rax
	adcq	280(%rsp), %rcx
	adcq	288(%rsp), %rdx
	adcq	296(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 304(%rsp)
	movq	%rcx, 312(%rsp)
	movq	%rdx, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rdx
	movq	264(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	272(%rsp), %rax
	sbbq	280(%rsp), %rcx
	sbbq	288(%rsp), %rdx
	sbbq	296(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rdx, 288(%rsp)
	movq	%rsi, 296(%rsp)
	movq	$0, %r12
	movq	$0, %rsi
	movq	$0, %r8
	movq	$0, %r11
	movq	$0, %rbx
	movq	$0, %rcx
	movq	208(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %rdi
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %r12
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rsi
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %r8
	movq	216(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %r11
	movq	224(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %rbx
	movq	232(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rcx
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r11
	movq	%rbx, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %rbx
	movq	%rcx, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %r8
	adcq	%rdi, %r10
	adcq	%r12, %r11
	adcq	%rsi, %rbx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %r11
	adcq	%rcx, %rbx
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r11, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	208(%rsp), %rax
	movq	216(%rsp), %rcx
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rsi
	xorq	%rdi, %rdi
	subq	176(%rsp), %rax
	sbbq	184(%rsp), %rcx
	sbbq	192(%rsp), %rdx
	sbbq	200(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	sbbq	$0, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	subq	%rdi, %rax
	movq	%rax, 176(%rsp)
	movq	%rcx, 184(%rsp)
	movq	%rdx, 192(%rsp)
	movq	%rsi, 200(%rsp)
	movq	$0, %rbx
	movq	$0, %rcx
	movq	280(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %r11
	movq	%rdx, %rbp
	movq	288(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %r12
	movq	%rdx, %r8
	movq	296(%rsp), %rax
	mulq	288(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	288(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r12
	adcq	%rcx, %r8
	movq	296(%rsp), %rax
	mulq	280(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	%rcx, %rdi
	movq	296(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %r8
	adcq	%rcx, %rsi
	adcq	%rcx, %rdi
	adcq	%rcx, %rbx
	addq	%r11, %r11
	adcq	%rbp, %rbp
	adcq	%r12, %r12
	adcq	%r8, %r8
	adcq	%rsi, %rsi
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	movq	272(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	280(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	288(%rsp), %rax
	mulq	288(%rsp)
	addq	%r9, %r11
	adcq	%r10, %rbp
	adcq	%r13, %r12
	adcq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	$0, %rdi
	adcq	$0, %rbx
	movq	296(%rsp), %rax
	mulq	296(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %rbx
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rsi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rsi
	movq	%rdi, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rdi
	movq	%rbx, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r11, %r10
	adcq	%rbp, %rsi
	adcq	%r12, %rdi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rsi
	adcq	%rcx, %rdi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rsi, 288(%rsp)
	movq	%rdi, 296(%rsp)
	movq	$121665, %rdi
	movq	176(%rsp), %rax
	mulq	%rdi
	movq	%rax, %rcx
	movq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	184(%rsp), %rax
	mulq	%rdi
	movq	%rax, %r10
	movq	%rdx, %r11
	movq	200(%rsp), %rax
	mulq	%rdi
	movq	%rax, %rdi
	movq	%rdx, %rax
	addq	%r10, %rsi
	adcq	%r11, %r8
	adcq	%rdi, %r9
	adcq	$0, %rax
	movq	$38, %rdx
	mulq	%rdx
	addq	%rax, %rcx
	adcq	$0, %rsi
	adcq	$0, %r8
	adcq	$0, %r9
	movq	$38, %rax
	movq	$0, %rdx
	cmovnb	%rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 240(%rsp)
	movq	%rsi, 248(%rsp)
	movq	%r8, 256(%rsp)
	movq	%r9, 264(%rsp)
	movq	$0, %rsi
	movq	$0, %rcx
	movq	312(%rsp), %rax
	mulq	304(%rsp)
	movq	%rax, %r8
	movq	%rdx, %r11
	movq	320(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %rdi
	movq	328(%rsp), %rax
	mulq	320(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	320(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %rbp
	adcq	%rcx, %rdi
	movq	328(%rsp), %rax
	mulq	312(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	%rcx, %r12
	movq	328(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %rdi
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rsi
	addq	%r8, %r8
	adcq	%r11, %r11
	adcq	%rbp, %rbp
	adcq	%rdi, %rdi
	adcq	%rbx, %rbx
	adcq	%r12, %r12
	adcq	%rsi, %rsi
	movq	304(%rsp), %rax
	mulq	304(%rsp)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	312(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	320(%rsp), %rax
	mulq	320(%rsp)
	addq	%r9, %r8
	adcq	%r10, %r11
	adcq	%r13, %rbp
	adcq	%rax, %rdi
	adcq	%rdx, %rbx
	adcq	$0, %r12
	adcq	$0, %rsi
	movq	328(%rsp), %rax
	mulq	328(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %rsi
	movq	$38, %r9
	movq	%rdi, %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r12
	movq	%rsi, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%r8, %r10
	adcq	%r11, %rbx
	adcq	%rbp, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%rdi, 80(%rsp)
	movq	%r10, 88(%rsp)
	movq	%rbx, 96(%rsp)
	movq	%r12, 104(%rsp)
	movq	208(%rsp), %rax
	movq	216(%rsp), %rcx
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rsi
	xorq	%rdi, %rdi
	addq	240(%rsp), %rax
	adcq	248(%rsp), %rcx
	adcq	256(%rsp), %rdx
	adcq	264(%rsp), %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	adcq	$0, %rcx
	adcq	$0, %rdx
	adcq	$0, %rsi
	sbbq	%rdi, %rdi
	andq	$38, %rdi
	addq	%rdi, %rax
	movq	%rax, 240(%rsp)
	movq	%rcx, 248(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	$0, %rsi
	movq	$0, %rbx
	movq	$0, %rcx
	movq	$0, %r11
	movq	$0, %r8
	movq	$0, %r12
	movq	144(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %rdi
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rbx
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	%rdx, %rcx
	movq	152(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %r11
	movq	160(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %r8
	movq	168(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %r12
	movq	$38, %r9
	movq	%rcx, %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %r10
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r11
	movq	%r8, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r8
	movq	%r12, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %rcx
	adcq	%rdi, %r10
	adcq	%rsi, %r11
	adcq	%rbx, %r8
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rdx
	addq	%rax, %rcx
	adcq	%rdx, %r10
	adcq	%rdx, %r11
	adcq	%rdx, %r8
	adcq	%rdx, %rdx
	imulq	$38, %rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%r10, 120(%rsp)
	movq	%r11, 128(%rsp)
	movq	%r8, 136(%rsp)
	movq	$0, %rsi
	movq	$0, %r13
	movq	$0, %r8
	movq	$0, %rcx
	movq	$0, %r12
	movq	$0, %r11
	movq	176(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %rdi
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %r13
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r13
	adcq	%rdx, %r8
	movq	184(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r13
	adcq	$0, %rdx
	addq	%r10, %r13
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rcx
	movq	192(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %r13
	adcq	$0, %rdx
	addq	%r10, %r13
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %r12
	movq	200(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %r13
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%rdx, %r11
	movq	$38, %r10
	movq	%r8, %rax
	mulq	%r10
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rcx, %rax
	mulq	%r10
	addq	%rax, %r9
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r10
	addq	%rax, %rbx
	movq	$0, %r12
	movq	%r11, %rax
	adcq	%rdx, %r12
	mulq	%r10
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %r8
	adcq	%rdi, %r9
	adcq	%rsi, %rbx
	adcq	%r13, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r9
	adcq	%rcx, %rbx
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%mm1, %rcx
	cmpq	$0, %rcx
	jnbe	L_curve25519_ref4$27
	movq	%r8, 112(%rsp)
	movq	%r9, 120(%rsp)
	movq	%rbx, 128(%rsp)
	movq	%r12, 136(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	80(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$26:
	movq	80(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$25:
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$24:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$23:
	leaq	80(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$22:
	movq	80(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$21:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$20:
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$19:
	movl	$4, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$18:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$17:
	movl	$10, %ebp
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$16:
	leaq	112(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$15:
	movl	$20, %ebp
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$14:
	leaq	112(%rsp), %r10
	leaq	16(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$13:
	movl	$10, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$12:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$11:
	movl	$50, %ebp
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$10:
	leaq	112(%rsp), %r10
	leaq	144(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$9:
	movl	$100, %ebp
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$8:
	leaq	112(%rsp), %r10
	leaq	16(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$7:
	movl	$50, %ebp
	leaq	112(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$6:
	leaq	144(%rsp), %r10
	leaq	112(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$5:
	movl	$4, %ebp
	leaq	144(%rsp), %rdi
	call	L_it_sqr4_p$1
L_curve25519_ref4$4:
	leaq	144(%rsp), %rdi
	call	L_sqr4_p$1
L_curve25519_ref4$3:
	leaq	144(%rsp), %r10
	leaq	80(%rsp), %rcx
	call	L_mul4_pp$1
L_curve25519_ref4$2:
	movq	$0, %r11
	movq	$0, %rbp
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %rsi
	movq	$0, %rdi
	movq	48(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	movq	%rax, %r12
	movq	%rdx, %rcx
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r11
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rbp
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %r8
	movq	56(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rbx
	movq	64(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rsi
	movq	72(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %rdi
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%rsi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rsi
	movq	%rdi, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r12, %r8
	adcq	%rcx, %r10
	adcq	%r11, %rbx
	adcq	%rbp, %rsi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rsi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	leaq	(%rsi,%rsi), %rax
	sarq	$63, %rsi
	shrq	$1, %rax
	andq	$19, %rsi
	addq	$19, %rsi
	addq	%rsi, %r8
	adcq	$0, %r10
	adcq	$0, %rbx
	adcq	$0, %rax
	leaq	(%rax,%rax), %rcx
	sarq	$63, %rax
	shrq	$1, %rcx
	notq	%rax
	andq	$19, %rax
	subq	%rax, %r8
	sbbq	$0, %r10
	sbbq	$0, %rbx
	sbbq	$0, %rcx
	ret
L_it_sqr4_p$1:
L_it_sqr4_p$2:
	call	L_sqr4_p$1
L_it_sqr4_p$3:
	decl	%ebp
	jne 	L_it_sqr4_p$2
	ret
L_sqr4_p$1:
	movq	$0, %r12
	movq	$0, %rcx
	movq	8(%rdi), %rax
	mulq	(%rdi)
	movq	%rax, %rsi
	movq	%rdx, %r15
	movq	16(%rdi), %rax
	mulq	8(%rdi)
	movq	%rax, %r11
	movq	%rdx, %r8
	movq	24(%rdi), %rax
	mulq	16(%rdi)
	movq	%rax, %rbx
	movq	%rdx, %r13
	movq	16(%rdi), %rax
	mulq	(%rdi)
	addq	%rax, %r15
	adcq	%rdx, %r11
	adcq	%rcx, %r8
	movq	24(%rdi), %rax
	mulq	8(%rdi)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	%rcx, %r13
	movq	24(%rdi), %rax
	mulq	(%rdi)
	addq	%rax, %r11
	adcq	%rdx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %r13
	adcq	%rcx, %r12
	addq	%rsi, %rsi
	adcq	%r15, %r15
	adcq	%r11, %r11
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	adcq	%r13, %r13
	adcq	%r12, %r12
	movq	(%rdi), %rax
	mulq	(%rdi)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	8(%rdi), %rax
	mulq	8(%rdi)
	movq	%rax, %r10
	movq	%rdx, %r14
	movq	16(%rdi), %rax
	mulq	16(%rdi)
	addq	%r9, %rsi
	adcq	%r10, %r15
	adcq	%r14, %r11
	adcq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	$0, %r13
	adcq	$0, %r12
	movq	24(%rdi), %rax
	mulq	24(%rdi)
	addq	%rax, %r13
	adcq	%rdx, %r12
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r13, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r13
	movq	%r12, %rax
	adcq	%rdx, %r13
	mulq	%r9
	addq	%rax, %r13
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rsi, %r10
	adcq	%r15, %rbx
	adcq	%r11, %r13
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r13
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%r13, 24(%rdi)
	ret
L_mul4_pp$1:
	movq	$0, %r8
	movq	$0, %r12
	movq	$0, %rsi
	movq	$0, %rbx
	movq	$0, %r11
	movq	$0, %rdi
	movq	(%r10), %r9
	movq	(%rcx), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %r14
	movq	8(%rcx), %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r8
	movq	16(%rcx), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	%rdx, %r12
	movq	24(%rcx), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rsi
	movq	8(%r10), %r9
	movq	(%rcx), %rax
	mulq	%r9
	addq	%rax, %r14
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rcx), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r13, %r8
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rcx), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r13, %r12
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rcx), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r13, %rsi
	adcq	%rdx, %rbx
	movq	16(%r10), %r9
	movq	(%rcx), %rax
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rcx), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r13, %r12
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rcx), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r13, %rsi
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rcx), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r13, %rbx
	adcq	%rdx, %r11
	movq	24(%r10), %r9
	movq	(%rcx), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rcx), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r13, %rsi
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rcx), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r13, %rbx
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rcx), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r13, %r11
	adcq	%rdx, %rdi
	movq	$38, %rcx
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rax, %rsi
	movq	%rdx, %r9
	movq	%rbx, %rax
	mulq	%rcx
	addq	%rax, %r9
	movq	$0, %rbx
	movq	%r11, %rax
	adcq	%rdx, %rbx
	mulq	%rcx
	addq	%rax, %rbx
	movq	$0, %r11
	movq	%rdi, %rax
	adcq	%rdx, %r11
	mulq	%rcx
	addq	%rax, %r11
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %rsi
	adcq	%r14, %r9
	adcq	%r8, %rbx
	adcq	%r12, %r11
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r9
	adcq	%rcx, %rbx
	adcq	%rcx, %r11
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, (%r10)
	movq	%r9, 8(%r10)
	movq	%rbx, 16(%r10)
	movq	%r11, 24(%r10)
	ret
L_poly_tomsg_1$1:
	call	L_poly_csubq$1
L_poly_tomsg_1$2:
	leaq	glob_data + 1056(%rip), %rsi
	vmovdqu	(%rsi), %ymm0
	leaq	glob_data + 1024(%rip), %rsi
	vmovdqu	(%rsi), %ymm1
	vmovdqu	(%rcx), %ymm2
	vmovdqu	32(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, (%rax)
	vmovdqu	64(%rcx), %ymm2
	vmovdqu	96(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 4(%rax)
	vmovdqu	128(%rcx), %ymm2
	vmovdqu	160(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 8(%rax)
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 12(%rax)
	vmovdqu	256(%rcx), %ymm2
	vmovdqu	288(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 16(%rax)
	vmovdqu	320(%rcx), %ymm2
	vmovdqu	352(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 20(%rax)
	vmovdqu	384(%rcx), %ymm2
	vmovdqu	416(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$216, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 24(%rax)
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm0
	vpsraw	$15, %ymm2, %ymm3
	vpsraw	$15, %ymm0, %ymm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm4, %ymm0, %ymm0
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vpacksswb	%ymm0, %ymm2, %ymm0
	vpermq	$216, %ymm0, %ymm0
	vpmovmskb	%ymm0, %ecx
	movl	%ecx, 28(%rax)
	ret
L_poly_tobytes$1:
	call	L_poly_csubq$1
L_poly_tobytes$2:
	vmovdqu	(%rcx), %ymm4
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm7
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$170, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$170, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, (%rdx)
	vmovdqu	%ymm5, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm1, 96(%rdx)
	vmovdqu	%ymm2, 128(%rdx)
	vmovdqu	%ymm0, 160(%rdx)
	vmovdqu	256(%rcx), %ymm4
	vmovdqu	288(%rcx), %ymm5
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm7
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$170, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$170, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, 192(%rdx)
	vmovdqu	%ymm5, 224(%rdx)
	vmovdqu	%ymm6, 256(%rdx)
	vmovdqu	%ymm1, 288(%rdx)
	vmovdqu	%ymm2, 320(%rdx)
	vmovdqu	%ymm0, 352(%rdx)
	ret
L_poly_sub$1:
	vmovdqu	(%rsi), %ymm0
	vmovdqu	(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rsi), %ymm0
	vmovdqu	32(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rsi), %ymm0
	vmovdqu	64(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rsi), %ymm0
	vmovdqu	96(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rsi), %ymm0
	vmovdqu	128(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rsi), %ymm0
	vmovdqu	160(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rsi), %ymm0
	vmovdqu	192(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rsi), %ymm0
	vmovdqu	224(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rsi), %ymm0
	vmovdqu	256(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rsi), %ymm0
	vmovdqu	288(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rsi), %ymm0
	vmovdqu	320(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rsi), %ymm0
	vmovdqu	352(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rsi), %ymm0
	vmovdqu	384(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rsi), %ymm0
	vmovdqu	416(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rsi), %ymm0
	vmovdqu	448(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rsi), %ymm0
	vmovdqu	480(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_ntt$1:
	leaq	glob_data + 2112(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vpbroadcastd	(%rsi), %ymm1
	vpbroadcastd	4(%rsi), %ymm2
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm4
	vmovdqu	96(%rcx), %ymm5
	vmovdqu	256(%rcx), %ymm6
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm12
	vmovdqu	352(%rcx), %ymm8
	vpmullw	%ymm6, %ymm1, %ymm9
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm15
	vpmullw	%ymm12, %ymm1, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm7
	vpmullw	%ymm8, %ymm1, %ymm12
	vpmulhw	%ymm8, %ymm2, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm12, %ymm12
	vpsubw	%ymm15, %ymm14, %ymm13
	vpaddw	%ymm14, %ymm15, %ymm14
	vpsubw	%ymm6, %ymm3, %ymm15
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm8, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm8, %ymm5
	vpsubw	%ymm7, %ymm4, %ymm8
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm15, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm14, %ymm10
	vpaddw	%ymm8, %ymm11, %ymm8
	vpsubw	%ymm11, %ymm4, %ymm4
	vpaddw	%ymm6, %ymm12, %ymm6
	vpsubw	%ymm12, %ymm5, %ymm5
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm10, 32(%rcx)
	vmovdqu	%ymm4, 64(%rcx)
	vmovdqu	%ymm5, 96(%rcx)
	vmovdqu	%ymm7, 256(%rcx)
	vmovdqu	%ymm9, 288(%rcx)
	vmovdqu	%ymm8, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	128(%rcx), %ymm3
	vmovdqu	160(%rcx), %ymm12
	vmovdqu	192(%rcx), %ymm4
	vmovdqu	224(%rcx), %ymm5
	vmovdqu	384(%rcx), %ymm6
	vmovdqu	416(%rcx), %ymm7
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm11
	vpmullw	%ymm6, %ymm1, %ymm14
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm8
	vpmulhw	%ymm7, %ymm2, %ymm13
	vpmullw	%ymm10, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm7
	vpmullw	%ymm11, %ymm1, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm14, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm6, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm1, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm1, %ymm1
	vpsubw	%ymm7, %ymm4, %ymm5
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm13, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm3, %ymm2
	vpaddw	%ymm11, %ymm8, %ymm3
	vpsubw	%ymm8, %ymm12, %ymm8
	vpaddw	%ymm5, %ymm9, %ymm5
	vpsubw	%ymm9, %ymm4, %ymm9
	vpaddw	%ymm6, %ymm10, %ymm4
	vpsubw	%ymm10, %ymm1, %ymm14
	vmovdqu	%ymm7, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm5, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	vpbroadcastd	8(%rsi), %ymm1
	vpbroadcastd	12(%rsi), %ymm4
	vmovdqu	%ymm8, %ymm10
	vmovdqu	%ymm9, %ymm3
	vmovdqu	(%rcx), %ymm6
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm9
	vmovdqu	96(%rcx), %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm4, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm13
	vpmulhw	%ymm10, %ymm4, %ymm12
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm4, %ymm10
	vpmullw	%ymm14, %ymm1, %ymm3
	vpmulhw	%ymm14, %ymm4, %ymm14
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm13, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm12, %ymm5, %ymm4
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm6, %ymm12
	vpaddw	%ymm6, %ymm8, %ymm13
	vpsubw	%ymm14, %ymm7, %ymm6
	vpaddw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm10, %ymm9, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm12, %ymm11, %ymm10
	vpsubw	%ymm11, %ymm13, %ymm12
	vpaddw	%ymm4, %ymm1, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpaddw	%ymm8, %ymm2, %ymm8
	vpsubw	%ymm2, %ymm9, %ymm2
	vpaddw	%ymm6, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm7, %ymm7
	vmovdqu	16(%rsi), %ymm3
	vmovdqu	48(%rsi), %ymm6
	vperm2i128	$32, %ymm10, %ymm12, %ymm11
	vperm2i128	$49, %ymm10, %ymm12, %ymm9
	vperm2i128	$32, %ymm4, %ymm5, %ymm1
	vperm2i128	$49, %ymm4, %ymm5, %ymm12
	vperm2i128	$32, %ymm8, %ymm2, %ymm5
	vperm2i128	$49, %ymm8, %ymm2, %ymm8
	vperm2i128	$32, %ymm13, %ymm7, %ymm2
	vperm2i128	$49, %ymm13, %ymm7, %ymm13
	vpmullw	%ymm5, %ymm3, %ymm4
	vpmulhw	%ymm5, %ymm6, %ymm10
	vpmullw	%ymm8, %ymm3, %ymm14
	vpmulhw	%ymm8, %ymm6, %ymm8
	vpmullw	%ymm2, %ymm3, %ymm5
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm8, %ymm9, %ymm7
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	80(%rsi), %ymm1
	vmovdqu	112(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	144(%rsi), %ymm3
	vmovdqu	176(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$170, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$170, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$170, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$170, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$170, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	208(%rsi), %ymm5
	vmovdqu	240(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$170, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$170, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$170, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	272(%rsi), %ymm9
	vmovdqu	304(%rsi), %ymm13
	vmovdqu	336(%rsi), %ymm11
	vmovdqu	368(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm1, %ymm1
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	%ymm8, 128(%rcx)
	vmovdqu	%ymm5, 160(%rcx)
	vmovdqu	%ymm7, 192(%rcx)
	vmovdqu	%ymm1, 224(%rcx)
	vpbroadcastd	400(%rsi), %ymm5
	vpbroadcastd	404(%rsi), %ymm8
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	416(%rcx), %ymm2
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm9
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm4
	vpmullw	%ymm1, %ymm5, %ymm14
	vpmulhw	%ymm1, %ymm8, %ymm12
	vpmullw	%ymm2, %ymm5, %ymm1
	vpmulhw	%ymm2, %ymm8, %ymm11
	vpmullw	%ymm10, %ymm5, %ymm2
	vpmulhw	%ymm10, %ymm8, %ymm13
	vpmullw	%ymm9, %ymm5, %ymm10
	vpmulhw	%ymm9, %ymm8, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm8
	vpmulhw	%ymm0, %ymm1, %ymm9
	vpmulhw	%ymm0, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm10, %ymm2
	vpsubw	%ymm11, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm11, %ymm11
	vpsubw	%ymm12, %ymm3, %ymm7
	vpaddw	%ymm3, %ymm12, %ymm12
	vpsubw	%ymm5, %ymm4, %ymm3
	vpaddw	%ymm4, %ymm5, %ymm4
	vpsubw	%ymm13, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm13, %ymm6
	vpaddw	%ymm7, %ymm8, %ymm7
	vpsubw	%ymm8, %ymm12, %ymm12
	vpaddw	%ymm10, %ymm9, %ymm8
	vpsubw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm5, %ymm1, %ymm5
	vpsubw	%ymm1, %ymm6, %ymm6
	vpaddw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm2, %ymm4, %ymm2
	vmovdqu	408(%rsi), %ymm3
	vmovdqu	440(%rsi), %ymm4
	vperm2i128	$32, %ymm7, %ymm12, %ymm10
	vperm2i128	$49, %ymm7, %ymm12, %ymm11
	vperm2i128	$32, %ymm8, %ymm9, %ymm1
	vperm2i128	$49, %ymm8, %ymm9, %ymm12
	vperm2i128	$32, %ymm5, %ymm6, %ymm8
	vperm2i128	$49, %ymm5, %ymm6, %ymm5
	vperm2i128	$32, %ymm13, %ymm2, %ymm6
	vperm2i128	$49, %ymm13, %ymm2, %ymm13
	vpmullw	%ymm8, %ymm3, %ymm7
	vpmulhw	%ymm8, %ymm4, %ymm14
	vpmullw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm5, %ymm4, %ymm8
	vpmullw	%ymm6, %ymm3, %ymm5
	vpmulhw	%ymm6, %ymm4, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm6
	vpmulhw	%ymm13, %ymm4, %ymm13
	vpmulhw	%ymm0, %ymm7, %ymm3
	vpmulhw	%ymm0, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm8, %ymm11, %ymm7
	vpaddw	%ymm11, %ymm8, %ymm8
	vpsubw	%ymm14, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	472(%rsi), %ymm1
	vmovdqu	504(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	536(%rsi), %ymm3
	vmovdqu	568(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$170, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$170, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$170, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$170, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$170, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	600(%rsi), %ymm5
	vmovdqu	632(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$170, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$170, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$170, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$170, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	664(%rsi), %ymm9
	vmovdqu	696(%rsi), %ymm13
	vmovdqu	728(%rsi), %ymm11
	vmovdqu	760(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm0
	vpsubw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm3, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	%ymm8, 384(%rcx)
	vmovdqu	%ymm5, 416(%rcx)
	vmovdqu	%ymm7, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_invntt$1:
	leaq	glob_data + 1312(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rsi), %ymm12
	vmovdqu	64(%rsi), %ymm1
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm4
	vmovdqu	64(%rcx), %ymm15
	vmovdqu	96(%rcx), %ymm11
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vmovdqu	192(%rcx), %ymm13
	vmovdqu	224(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	128(%rsi), %ymm2
	vmovdqu	160(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$170, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$170, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm5, %ymm2, %ymm13
	vmovdqu	192(%rsi), %ymm2
	vmovdqu	224(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$170, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$170, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$170, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	384(%rsi), %ymm7
	vpbroadcastd	388(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm3, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm9, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	vmovdqu	392(%rsi), %ymm12
	vmovdqu	456(%rsi), %ymm1
	vmovdqu	424(%rsi), %ymm2
	vmovdqu	488(%rsi), %ymm5
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm4
	vmovdqu	320(%rcx), %ymm15
	vmovdqu	352(%rcx), %ymm11
	vmovdqu	384(%rcx), %ymm7
	vmovdqu	416(%rcx), %ymm8
	vmovdqu	448(%rcx), %ymm13
	vmovdqu	480(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	520(%rsi), %ymm2
	vmovdqu	552(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$170, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$170, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$170, %ymm5, %ymm2, %ymm13
	vmovdqu	584(%rsi), %ymm2
	vmovdqu	616(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$170, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$170, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$170, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	648(%rsi), %ymm4
	vmovdqu	680(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	712(%rsi), %ymm4
	vmovdqu	744(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	776(%rsi), %ymm7
	vpbroadcastd	780(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm10
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm8, 416(%rcx)
	vmovdqu	%ymm9, 448(%rcx)
	vmovdqu	%ymm7, 480(%rcx)
	vpbroadcastd	784(%rsi), %ymm1
	vpbroadcastd	788(%rsi), %ymm2
	vmovdqu	%ymm4, %ymm7
	vmovdqu	%ymm3, %ymm4
	vmovdqu	%ymm10, %ymm3
	vmovdqu	(%rcx), %ymm9
	vmovdqu	32(%rcx), %ymm13
	vmovdqu	64(%rcx), %ymm5
	vmovdqu	96(%rcx), %ymm8
	vpsubw	%ymm3, %ymm9, %ymm10
	vpsubw	%ymm4, %ymm13, %ymm11
	vpsubw	%ymm6, %ymm5, %ymm12
	vpaddw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm4, %ymm4
	vpmullw	%ymm10, %ymm1, %ymm13
	vpaddw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm11, %ymm1, %ymm6
	vpsubw	%ymm7, %ymm8, %ymm14
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm12, %ymm1, %ymm8
	vpmullw	%ymm14, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm14, %ymm2, %ymm14
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpsubw	%ymm13, %ymm10, %ymm10
	vpsubw	%ymm6, %ymm11, %ymm6
	vpsubw	%ymm8, %ymm12, %ymm11
	vpsubw	%ymm9, %ymm14, %ymm12
	vmovdqu	glob_data + 1152(%rip), %ymm8
	vmovdqu	glob_data + 1184(%rip), %ymm9
	vmovdqu	%ymm10, 256(%rcx)
	vmovdqu	%ymm6, 288(%rcx)
	vmovdqu	%ymm11, 320(%rcx)
	vmovdqu	%ymm12, 352(%rcx)
	vpmullw	%ymm3, %ymm8, %ymm6
	vpmulhw	%ymm3, %ymm9, %ymm3
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm4, %ymm8, %ymm6
	vpmulhw	%ymm4, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vpmullw	%ymm5, %ymm8, %ymm6
	vpmulhw	%ymm5, %ymm9, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm5, %ymm5
	vpmullw	%ymm7, %ymm8, %ymm6
	vpmulhw	%ymm7, %ymm9, %ymm7
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm7, %ymm6
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm5, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	384(%rcx), %ymm4
	vmovdqu	416(%rcx), %ymm5
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm10
	vmovdqu	128(%rcx), %ymm6
	vmovdqu	160(%rcx), %ymm9
	vmovdqu	192(%rcx), %ymm8
	vmovdqu	224(%rcx), %ymm11
	vpsubw	%ymm4, %ymm6, %ymm12
	vpsubw	%ymm5, %ymm9, %ymm13
	vpsubw	%ymm7, %ymm8, %ymm3
	vpaddw	%ymm6, %ymm4, %ymm4
	vpaddw	%ymm9, %ymm5, %ymm5
	vpmullw	%ymm12, %ymm1, %ymm6
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm13, %ymm1, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm3, %ymm1, %ymm11
	vpmullw	%ymm9, %ymm1, %ymm1
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm13, %ymm2, %ymm13
	vpmulhw	%ymm3, %ymm2, %ymm3
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm11, %ymm0, %ymm9
	vpmulhw	%ymm1, %ymm0, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm1
	vpsubw	%ymm8, %ymm13, %ymm6
	vpsubw	%ymm9, %ymm3, %ymm8
	vpsubw	%ymm11, %ymm2, %ymm9
	vmovdqu	glob_data + 1152(%rip), %ymm2
	vmovdqu	glob_data + 1184(%rip), %ymm3
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm6, 416(%rcx)
	vmovdqu	%ymm8, 448(%rcx)
	vmovdqu	%ymm9, 480(%rcx)
	vpmullw	%ymm4, %ymm2, %ymm1
	vpmulhw	%ymm4, %ymm3, %ymm4
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm4, %ymm1
	vpmullw	%ymm5, %ymm2, %ymm4
	vpmulhw	%ymm5, %ymm3, %ymm5
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm7, %ymm2, %ymm5
	vpmulhw	%ymm7, %ymm3, %ymm6
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm0
	vpsubw	%ymm0, %ymm3, %ymm0
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	%ymm5, 192(%rcx)
	vmovdqu	%ymm0, 224(%rcx)
	ret
L_poly_getnoise_eta1_4x$1:
	vmovdqu	(%rdi), %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 192(%rsp)
	vmovdqu	%ymm0, 352(%rsp)
	vmovdqu	%ymm0, 512(%rsp)
	movb	%r8b, 64(%rsp)
	incb	%r8b
	movb	%r8b, 224(%rsp)
	incb	%r8b
	movb	%r8b, 384(%rsp)
	incb	%r8b
	movb	%r8b, 544(%rsp)
	leaq	672(%rsp), %r8
	leaq	32(%rsp), %r9
	leaq	192(%rsp), %r10
	leaq	352(%rsp), %r11
	leaq	512(%rsp), %rbx
	call	L_shake256_absorb4x_33$1
L_poly_getnoise_eta1_4x$3:
	leaq	672(%rsp), %r8
	leaq	32(%rsp), %r9
	leaq	192(%rsp), %r10
	leaq	352(%rsp), %r11
	leaq	512(%rsp), %rbx
	leaq	-824(%rsp), %rsp
	call	L_KeccakF1600_StatePermute4x$1
L_poly_getnoise_eta1_4x$2:
	leaq	824(%rsp), %rsp
	vmovdqu	(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, (%r9)
	vmovhpd	%xmm1, (%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, (%r11)
	vmovhpd	%xmm0, (%rbx)
	vmovdqu	32(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 8(%r9)
	vmovhpd	%xmm1, 8(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 8(%r11)
	vmovhpd	%xmm0, 8(%rbx)
	vmovdqu	64(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 16(%r9)
	vmovhpd	%xmm1, 16(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 16(%r11)
	vmovhpd	%xmm0, 16(%rbx)
	vmovdqu	96(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 24(%r9)
	vmovhpd	%xmm1, 24(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 24(%r11)
	vmovhpd	%xmm0, 24(%rbx)
	vmovdqu	128(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 32(%r9)
	vmovhpd	%xmm1, 32(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 32(%r11)
	vmovhpd	%xmm0, 32(%rbx)
	vmovdqu	160(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 40(%r9)
	vmovhpd	%xmm1, 40(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 40(%r11)
	vmovhpd	%xmm0, 40(%rbx)
	vmovdqu	192(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 48(%r9)
	vmovhpd	%xmm1, 48(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 48(%r11)
	vmovhpd	%xmm0, 48(%rbx)
	vmovdqu	224(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 56(%r9)
	vmovhpd	%xmm1, 56(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 56(%r11)
	vmovhpd	%xmm0, 56(%rbx)
	vmovdqu	256(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 64(%r9)
	vmovhpd	%xmm1, 64(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 64(%r11)
	vmovhpd	%xmm0, 64(%rbx)
	vmovdqu	288(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 72(%r9)
	vmovhpd	%xmm1, 72(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 72(%r11)
	vmovhpd	%xmm0, 72(%rbx)
	vmovdqu	320(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 80(%r9)
	vmovhpd	%xmm1, 80(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 80(%r11)
	vmovhpd	%xmm0, 80(%rbx)
	vmovdqu	352(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 88(%r9)
	vmovhpd	%xmm1, 88(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 88(%r11)
	vmovhpd	%xmm0, 88(%rbx)
	vmovdqu	384(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 96(%r9)
	vmovhpd	%xmm1, 96(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 96(%r11)
	vmovhpd	%xmm0, 96(%rbx)
	vmovdqu	416(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 104(%r9)
	vmovhpd	%xmm1, 104(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 104(%r11)
	vmovhpd	%xmm0, 104(%rbx)
	vmovdqu	448(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 112(%r9)
	vmovhpd	%xmm1, 112(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 112(%r11)
	vmovhpd	%xmm0, 112(%rbx)
	vmovdqu	480(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 120(%r9)
	vmovhpd	%xmm1, 120(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 120(%r11)
	vmovhpd	%xmm0, 120(%rbx)
	vmovdqu	512(%r8), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 128(%r9)
	vmovhpd	%xmm1, 128(%r10)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 128(%r11)
	vmovhpd	%xmm0, 128(%rbx)
	leaq	32(%rsp), %r8
	movl	$1431655765, 1472(%rsp)
	movl	$858993459, 1476(%rsp)
	movl	$50529027, 1480(%rsp)
	movl	$252645135, 1484(%rsp)
	vpbroadcastd	1472(%rsp), %ymm0
	vpbroadcastd	1476(%rsp), %ymm1
	vpbroadcastd	1480(%rsp), %ymm2
	vpbroadcastd	1484(%rsp), %ymm3
	vmovdqu	(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rax)
	vmovdqu	%ymm7, 32(%rax)
	vmovdqu	%ymm6, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	32(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm7, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm4, 224(%rax)
	vmovdqu	64(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rax)
	vmovdqu	%ymm7, 288(%rax)
	vmovdqu	%ymm6, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vmovdqu	96(%r8), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rax)
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	%ymm0, 480(%rax)
	leaq	192(%rsp), %rax
	movl	$1431655765, 1484(%rsp)
	movl	$858993459, 1480(%rsp)
	movl	$50529027, 1476(%rsp)
	movl	$252645135, 1472(%rsp)
	vpbroadcastd	1484(%rsp), %ymm0
	vpbroadcastd	1480(%rsp), %ymm1
	vpbroadcastd	1476(%rsp), %ymm2
	vpbroadcastd	1472(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm7, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm7, 160(%rcx)
	vmovdqu	%ymm6, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm7, 288(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	leaq	352(%rsp), %rax
	movl	$1431655765, 1472(%rsp)
	movl	$858993459, 1476(%rsp)
	movl	$50529027, 1480(%rsp)
	movl	$252645135, 1484(%rsp)
	vpbroadcastd	1472(%rsp), %ymm0
	vpbroadcastd	1476(%rsp), %ymm1
	vpbroadcastd	1480(%rsp), %ymm2
	vpbroadcastd	1484(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rdx)
	vmovdqu	%ymm7, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm4, 96(%rdx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rdx)
	vmovdqu	%ymm7, 160(%rdx)
	vmovdqu	%ymm6, 192(%rdx)
	vmovdqu	%ymm4, 224(%rdx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rdx)
	vmovdqu	%ymm7, 288(%rdx)
	vmovdqu	%ymm6, 320(%rdx)
	vmovdqu	%ymm4, 352(%rdx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rdx)
	vmovdqu	%ymm3, 416(%rdx)
	vmovdqu	%ymm2, 448(%rdx)
	vmovdqu	%ymm0, 480(%rdx)
	leaq	512(%rsp), %rax
	movl	$1431655765, 1484(%rsp)
	movl	$858993459, 1480(%rsp)
	movl	$50529027, 1476(%rsp)
	movl	$252645135, 1472(%rsp)
	vpbroadcastd	1484(%rsp), %ymm0
	vpbroadcastd	1480(%rsp), %ymm1
	vpbroadcastd	1476(%rsp), %ymm2
	vpbroadcastd	1472(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rsi)
	vmovdqu	%ymm7, 32(%rsi)
	vmovdqu	%ymm6, 64(%rsi)
	vmovdqu	%ymm4, 96(%rsi)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rsi)
	vmovdqu	%ymm7, 160(%rsi)
	vmovdqu	%ymm6, 192(%rsi)
	vmovdqu	%ymm4, 224(%rsi)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rsi)
	vmovdqu	%ymm7, 288(%rsi)
	vmovdqu	%ymm6, 320(%rsi)
	vmovdqu	%ymm4, 352(%rsi)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rsi)
	vmovdqu	%ymm3, 416(%rsi)
	vmovdqu	%ymm2, 448(%rsi)
	vmovdqu	%ymm0, 480(%rsi)
	ret
L_poly_frommsg_1$1:
	leaq	glob_data + 1088(%rip), %rsi
	vmovdqu	(%rsi), %ymm0
	vbroadcasti128	glob_data + 2928(%rip), %ymm1
	vbroadcasti128	glob_data + 2912(%rip), %ymm2
	vmovdqu	(%rdi), %ymm3
	vpshufd	$0, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, (%rax)
	vmovdqu	%ymm8, 32(%rax)
	vmovdqu	%ymm6, 256(%rax)
	vmovdqu	%ymm4, 288(%rax)
	vpshufd	$85, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 64(%rax)
	vmovdqu	%ymm8, 96(%rax)
	vmovdqu	%ymm6, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vpshufd	$170, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 128(%rax)
	vmovdqu	%ymm8, 160(%rax)
	vmovdqu	%ymm6, 384(%rax)
	vmovdqu	%ymm4, 416(%rax)
	vpshufd	$255, %ymm3, %ymm3
	vpsllvd	%ymm1, %ymm3, %ymm1
	vpshufb	%ymm2, %ymm1, %ymm1
	vpsllw	$12, %ymm1, %ymm2
	vpsllw	$8, %ymm1, %ymm3
	vpsllw	$4, %ymm1, %ymm4
	vpsraw	$15, %ymm2, %ymm2
	vpsraw	$15, %ymm3, %ymm3
	vpsraw	$15, %ymm4, %ymm4
	vpsraw	$15, %ymm1, %ymm1
	vpand	%ymm0, %ymm2, %ymm2
	vpand	%ymm0, %ymm3, %ymm3
	vpand	%ymm0, %ymm4, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpunpcklqdq	%ymm3, %ymm2, %ymm1
	vpunpckhqdq	%ymm3, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm4, %ymm3
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm3, %ymm1, %ymm4
	vperm2i128	$49, %ymm3, %ymm1, %ymm1
	vperm2i128	$32, %ymm0, %ymm2, %ymm3
	vperm2i128	$49, %ymm0, %ymm2, %ymm0
	vmovdqu	%ymm4, 192(%rax)
	vmovdqu	%ymm3, 224(%rax)
	vmovdqu	%ymm1, 448(%rax)
	vmovdqu	%ymm0, 480(%rax)
	ret
L_poly_frommont$1:
	leaq	glob_data + 1280(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	leaq	glob_data + 1248(%rip), %rcx
	vmovdqu	(%rcx), %ymm1
	leaq	glob_data + 992(%rip), %rcx
	vmovdqu	(%rcx), %ymm2
	vmovdqu	(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, (%rax)
	vmovdqu	32(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 32(%rax)
	vmovdqu	64(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	96(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 96(%rax)
	vmovdqu	128(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 128(%rax)
	vmovdqu	160(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 160(%rax)
	vmovdqu	192(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 192(%rax)
	vmovdqu	224(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 224(%rax)
	vmovdqu	256(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 256(%rax)
	vmovdqu	288(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 288(%rax)
	vmovdqu	320(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 320(%rax)
	vmovdqu	352(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 352(%rax)
	vmovdqu	384(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 384(%rax)
	vmovdqu	416(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	448(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 448(%rax)
	vmovdqu	480(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm1, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	ret
L_poly_frombytes$1:
	leaq	glob_data + 1120(%rip), %r9
	vmovdqu	(%r9), %ymm0
	vmovdqu	(%rsi), %ymm1
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	64(%rsi), %ymm3
	vmovdqu	96(%rsi), %ymm4
	vmovdqu	128(%rsi), %ymm5
	vmovdqu	160(%rsi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$170, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$170, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$170, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$170, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$170, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm2
	vmovdqu	%ymm3, (%r8)
	vmovdqu	%ymm6, 32(%r8)
	vmovdqu	%ymm4, 64(%r8)
	vmovdqu	%ymm7, 96(%r8)
	vmovdqu	%ymm1, 128(%r8)
	vmovdqu	%ymm8, 160(%r8)
	vmovdqu	%ymm5, 192(%r8)
	vmovdqu	%ymm2, 224(%r8)
	vmovdqu	192(%rsi), %ymm1
	vmovdqu	224(%rsi), %ymm2
	vmovdqu	256(%rsi), %ymm3
	vmovdqu	288(%rsi), %ymm4
	vmovdqu	320(%rsi), %ymm5
	vmovdqu	352(%rsi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$170, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$170, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$170, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$170, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$170, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$170, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$170, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$170, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$170, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$170, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm3, 256(%r8)
	vmovdqu	%ymm6, 288(%r8)
	vmovdqu	%ymm4, 320(%r8)
	vmovdqu	%ymm7, 352(%r8)
	vmovdqu	%ymm1, 384(%r8)
	vmovdqu	%ymm8, 416(%r8)
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	%ymm0, 480(%r8)
	ret
L_poly_decompress$1:
	leaq	glob_data + 1280(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	leaq	glob_data + 64(%rip), %rdi
	vmovdqu	(%rdi), %ymm1
	vpbroadcastd	glob_data + 3172(%rip), %ymm2
	vpbroadcastd	glob_data + 3168(%rip), %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	movq	(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, (%rsi)
	movq	8(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rsi)
	movq	16(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 64(%rsi)
	movq	24(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 96(%rsi)
	movq	32(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 128(%rsi)
	movq	40(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 160(%rsi)
	movq	48(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 192(%rsi)
	movq	56(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 224(%rsi)
	movq	64(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 256(%rsi)
	movq	72(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 288(%rsi)
	movq	80(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 320(%rsi)
	movq	88(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 352(%rsi)
	movq	96(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 384(%rsi)
	movq	104(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 416(%rsi)
	movq	112(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 448(%rsi)
	movq	120(%rcx), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpand	%ymm2, %ymm1, %ymm1
	vpmullw	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 480(%rsi)
	ret
L_poly_compress_1$1:
	call	L_poly_csubq$1
L_poly_compress_1$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	ret
L_poly_compress$1:
	call	L_poly_csubq$1
L_poly_compress$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	ret
L_poly_basemul$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1248(%rip), %ymm1
	vmovdqu	glob_data + 2384(%rip), %ymm2
	vmovdqu	glob_data + 2416(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vmovdqu	32(%rsi), %ymm5
	vmovdqu	(%rdi), %ymm6
	vmovdqu	32(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	64(%rdi), %ymm6
	vmovdqu	96(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 64(%rcx)
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	glob_data + 2448(%rip), %ymm2
	vmovdqu	glob_data + 2480(%rip), %ymm3
	vmovdqu	128(%rsi), %ymm4
	vmovdqu	160(%rsi), %ymm5
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	160(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	192(%rsi), %ymm4
	vmovdqu	224(%rsi), %ymm5
	vmovdqu	192(%rdi), %ymm6
	vmovdqu	224(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 192(%rcx)
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	glob_data + 2776(%rip), %ymm2
	vmovdqu	glob_data + 2808(%rip), %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vmovdqu	256(%rdi), %ymm6
	vmovdqu	288(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm5
	vmovdqu	320(%rdi), %ymm6
	vmovdqu	352(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 320(%rcx)
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	glob_data + 2840(%rip), %ymm2
	vmovdqu	glob_data + 2872(%rip), %ymm3
	vmovdqu	384(%rsi), %ymm4
	vmovdqu	416(%rsi), %ymm5
	vmovdqu	384(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm6
	vpblendw	$170, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm8
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vmovdqu	448(%rsi), %ymm4
	vmovdqu	480(%rsi), %ymm5
	vmovdqu	448(%rdi), %ymm6
	vmovdqu	480(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$170, %ymm5, %ymm7, %ymm4
	vpblendw	$170, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$170, %ymm5, %ymm2, %ymm7
	vpblendw	$170, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm3, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_csubq$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	32(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rcx)
	vmovdqu	64(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rcx)
	vmovdqu	96(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rcx)
	vmovdqu	128(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	160(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	192(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	224(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rcx)
	vmovdqu	256(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rcx)
	vmovdqu	288(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rcx)
	vmovdqu	320(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rcx)
	vmovdqu	352(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	384(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	416(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	448(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	480(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_add2$1:
	vmovdqu	(%rcx), %ymm0
	vmovdqu	(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rcx), %ymm0
	vmovdqu	32(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rcx), %ymm0
	vmovdqu	64(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rcx), %ymm0
	vmovdqu	96(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	128(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rcx), %ymm0
	vmovdqu	160(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rcx), %ymm0
	vmovdqu	192(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rcx), %ymm0
	vmovdqu	224(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rcx), %ymm0
	vmovdqu	256(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rcx), %ymm0
	vmovdqu	288(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rcx), %ymm0
	vmovdqu	320(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rcx), %ymm0
	vmovdqu	352(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	384(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rcx), %ymm0
	vmovdqu	416(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rcx), %ymm0
	vmovdqu	448(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rcx), %ymm0
	vmovdqu	480(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_shake256_absorb4x_33$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 544(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 576(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 608(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 640(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 672(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 704(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	movq	(%r9), %rbp
	xorq	%rbp, (%r8)
	movq	(%r10), %rbp
	xorq	%rbp, 8(%r8)
	movq	(%r11), %rbp
	xorq	%rbp, 16(%r8)
	movq	(%rbx), %rbp
	xorq	%rbp, 24(%r8)
	movq	8(%r9), %rbp
	xorq	%rbp, 32(%r8)
	movq	8(%r10), %rbp
	xorq	%rbp, 40(%r8)
	movq	8(%r11), %rbp
	xorq	%rbp, 48(%r8)
	movq	8(%rbx), %rbp
	xorq	%rbp, 56(%r8)
	movq	16(%r9), %rbp
	xorq	%rbp, 64(%r8)
	movq	16(%r10), %rbp
	xorq	%rbp, 72(%r8)
	movq	16(%r11), %rbp
	xorq	%rbp, 80(%r8)
	movq	16(%rbx), %rbp
	xorq	%rbp, 88(%r8)
	movq	24(%r9), %rbp
	xorq	%rbp, 96(%r8)
	movq	24(%r10), %rbp
	xorq	%rbp, 104(%r8)
	movq	24(%r11), %rbp
	xorq	%rbp, 112(%r8)
	movq	24(%rbx), %rbp
	xorq	%rbp, 120(%r8)
	movb	32(%r9), %r9b
	xorb	%r9b, 128(%r8)
	xorb	$31, 129(%r8)
	movb	32(%r10), %r9b
	xorb	%r9b, 136(%r8)
	xorb	$31, 137(%r8)
	movb	32(%r11), %r9b
	xorb	%r9b, 144(%r8)
	xorb	$31, 145(%r8)
	movb	32(%rbx), %r9b
	xorb	%r9b, 152(%r8)
	xorb	$31, 153(%r8)
	vmovdqu	glob_data + 960(%rip), %ymm0
	vmovdqu	512(%r8), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r8)
	ret
L_KeccakF1600_StatePermute4x$1:
	vmovdqu	640(%r8), %ymm0
	vpxor	480(%r8), %ymm0, %ymm0
	vpxor	320(%r8), %ymm0, %ymm0
	vpxor	160(%r8), %ymm0, %ymm0
	vpxor	(%r8), %ymm0, %ymm4
	vmovdqu	672(%r8), %ymm0
	vpxor	512(%r8), %ymm0, %ymm0
	vpxor	352(%r8), %ymm0, %ymm0
	vpxor	192(%r8), %ymm0, %ymm0
	vpxor	32(%r8), %ymm0, %ymm2
	vmovdqu	704(%r8), %ymm0
	vpxor	544(%r8), %ymm0, %ymm0
	vpxor	384(%r8), %ymm0, %ymm0
	vpxor	224(%r8), %ymm0, %ymm0
	vpxor	64(%r8), %ymm0, %ymm3
	vmovdqu	736(%r8), %ymm0
	vpxor	576(%r8), %ymm0, %ymm0
	vpxor	416(%r8), %ymm0, %ymm0
	vpxor	256(%r8), %ymm0, %ymm0
	vpxor	96(%r8), %ymm0, %ymm5
	vmovdqu	768(%r8), %ymm0
	vpxor	608(%r8), %ymm0, %ymm0
	vpxor	448(%r8), %ymm0, %ymm0
	vpxor	288(%r8), %ymm0, %ymm0
	vpxor	128(%r8), %ymm0, %ymm6
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm2, %ymm0
	vpsrlq	$63, %ymm2, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm6, %ymm0
	vpsllq	$1, %ymm3, %ymm1
	vpsrlq	$63, %ymm3, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm5, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpor	%ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm2, %ymm2
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpsllq	$1, %ymm4, %ymm6
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 128(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 160(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 192(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 224(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 256(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 288(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 320(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 352(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 384(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 416(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 448(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 480(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 512(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 544(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 576(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 608(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 640(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 672(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 704(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 736(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 768(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 800(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbp)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbp)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r8)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbp)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbp), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbp)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbp)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbp), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbp)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbp)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbp)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbp), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbp)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbp), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbp), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbp)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r8)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r8)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbp)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbp)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbp), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r8)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbp), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbp)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r8)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbp), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r8)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r8)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r8)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbp), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r8)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r8)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbp)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r8)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r8), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r8)
	vmovdqu	192(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r8)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 832(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbp)
	vmovdqu	576(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r8)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbp)
	vmovdqu	768(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r8)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbp)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbp)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vmovdqu	96(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r8)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r8), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r8)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r8)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r8)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r8), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r8)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r8), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r8)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r8), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r8)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbp)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r8)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbp)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r8), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r8)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbp)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbp)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r8)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r8)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r8)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbp)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r8), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r8)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbp)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r8), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r8)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbp)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbp)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbp)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r8), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r8)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r8), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r8)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r8), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r8)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbp)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r8), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r8)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbp)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r8)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbp)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbp)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbp)
	vpxor	%ymm0, %ymm5, %ymm3
	leaq	32(%rsp), %rbp
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbp)
	vmovdqu	192(%rbp), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbp)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbp), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbp)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 864(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r8)
	vmovdqu	576(%rbp), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	%ymm8, 576(%rbp)
	vpsllq	$21, %ymm8, %ymm9
	vpsrlq	$43, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r8)
	vmovdqu	768(%rbp), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vmovdqu	%ymm9, 768(%rbp)
	vpsllq	$14, %ymm9, %ymm10
	vpsrlq	$50, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 64(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 96(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	96(%rbp), %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 96(%rbp)
	vpsllq	$28, %ymm5, %ymm6
	vpsrlq	$36, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	288(%rbp), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbp)
	vpsllq	$20, %ymm6, %ymm7
	vpsrlq	$44, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	320(%rbp), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 320(%rbp)
	vpsllq	$3, %ymm7, %ymm8
	vpsrlq	$61, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 160(%r8)
	vmovdqu	512(%rbp), %ymm8
	vpxor	%ymm1, %ymm8, %ymm8
	vmovdqu	%ymm8, 512(%rbp)
	vpsllq	$45, %ymm8, %ymm9
	vpsrlq	$19, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 192(%r8)
	vmovdqu	704(%rbp), %ymm9
	vpxor	%ymm2, %ymm9, %ymm9
	vmovdqu	%ymm9, 704(%rbp)
	vpsllq	$61, %ymm9, %ymm10
	vpsrlq	$3, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 224(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 256(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 288(%r8)
	vmovdqu	32(%rbp), %ymm5
	vpxor	%ymm1, %ymm5, %ymm5
	vmovdqu	%ymm5, 32(%rbp)
	vpsllq	$1, %ymm5, %ymm6
	vpsrlq	$63, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	224(%rbp), %ymm6
	vpxor	%ymm2, %ymm6, %ymm6
	vmovdqu	%ymm6, 224(%rbp)
	vpsllq	$6, %ymm6, %ymm7
	vpsrlq	$58, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	416(%rbp), %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%rbp)
	vpsllq	$25, %ymm7, %ymm8
	vpsrlq	$39, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 320(%r8)
	vmovdqu	608(%rbp), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vmovdqu	%ymm8, 608(%rbp)
	vpshufb	glob_data + 896(%rip), %ymm8, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 352(%r8)
	vmovdqu	640(%rbp), %ymm9
	vpxor	%ymm0, %ymm9, %ymm9
	vmovdqu	%ymm9, 640(%rbp)
	vpsllq	$18, %ymm9, %ymm10
	vpsrlq	$46, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 384(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	128(%rbp), %ymm5
	vpxor	%ymm4, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbp)
	vpsllq	$27, %ymm5, %ymm6
	vpsrlq	$37, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	160(%rbp), %ymm6
	vpxor	%ymm0, %ymm6, %ymm6
	vmovdqu	%ymm6, 160(%rbp)
	vpsllq	$36, %ymm6, %ymm7
	vpsrlq	$28, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	352(%rbp), %ymm7
	vpxor	%ymm1, %ymm7, %ymm7
	vmovdqu	%ymm7, 352(%rbp)
	vpsllq	$10, %ymm7, %ymm8
	vpsrlq	$54, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 480(%r8)
	vmovdqu	544(%rbp), %ymm8
	vpxor	%ymm2, %ymm8, %ymm8
	vmovdqu	%ymm8, 544(%rbp)
	vpsllq	$15, %ymm8, %ymm9
	vpsrlq	$49, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 512(%r8)
	vmovdqu	736(%rbp), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 736(%rbp)
	vpshufb	glob_data + 928(%rip), %ymm9, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 544(%r8)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 576(%r8)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 608(%r8)
	vmovdqu	64(%rbp), %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vmovdqu	%ymm2, 64(%rbp)
	vpsllq	$62, %ymm2, %ymm5
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm5, %ymm2
	vmovdqu	256(%rbp), %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vmovdqu	%ymm3, 256(%rbp)
	vpsllq	$55, %ymm3, %ymm5
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vmovdqu	448(%rbp), %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 448(%rbp)
	vpsllq	$39, %ymm4, %ymm5
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpandn	%ymm4, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm5
	vmovdqu	%ymm5, 640(%r8)
	vmovdqu	480(%rbp), %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vmovdqu	%ymm0, 480(%rbp)
	vpsllq	$41, %ymm0, %ymm5
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm5, %ymm0
	vpandn	%ymm0, %ymm4, %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 672(%r8)
	vmovdqu	672(%rbp), %ymm5
	vpxor	%ymm1, %ymm5, %ymm1
	vpsllq	$2, %ymm1, %ymm5
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm5, %ymm1
	vpandn	%ymm1, %ymm0, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 704(%r8)
	vpandn	%ymm2, %ymm1, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 736(%r8)
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r8)
	ret
L_shake128_squeezeblock$1:
	movq	%rcx, 8(%rsp)
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake128_squeezeblock$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rdx
	movq	%rdx, 24(%rcx)
	movq	32(%rax), %rdx
	movq	%rdx, 32(%rcx)
	movq	40(%rax), %rdx
	movq	%rdx, 40(%rcx)
	movq	48(%rax), %rdx
	movq	%rdx, 48(%rcx)
	movq	56(%rax), %rdx
	movq	%rdx, 56(%rcx)
	movq	64(%rax), %rdx
	movq	%rdx, 64(%rcx)
	movq	72(%rax), %rdx
	movq	%rdx, 72(%rcx)
	movq	80(%rax), %rdx
	movq	%rdx, 80(%rcx)
	movq	88(%rax), %rdx
	movq	%rdx, 88(%rcx)
	movq	96(%rax), %rdx
	movq	%rdx, 96(%rcx)
	movq	104(%rax), %rdx
	movq	%rdx, 104(%rcx)
	movq	112(%rax), %rdx
	movq	%rdx, 112(%rcx)
	movq	120(%rax), %rdx
	movq	%rdx, 120(%rcx)
	movq	128(%rax), %rdx
	movq	%rdx, 128(%rcx)
	movq	136(%rax), %rdx
	movq	%rdx, 136(%rcx)
	movq	144(%rax), %rdx
	movq	%rdx, 144(%rcx)
	movq	152(%rax), %rdx
	movq	%rdx, 152(%rcx)
	movq	160(%rax), %rax
	movq	%rax, 160(%rcx)
	ret
L_shake128_absorb34$1:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rcx), %rdx
	xorq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	xorq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	xorq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	xorq	%rdx, 24(%rax)
	movw	32(%rcx), %cx
	xorw	%cx, 32(%rax)
	xorb	$31, 34(%rax)
	xorb	$128, 167(%rax)
	ret
L_sha3_512_32$1:
	leaq	16(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 32(%rsp)
	movq	24(%rcx), %rcx
	xorq	%rcx, 40(%rsp)
	xorb	$6, 48(%rsp)
	xorb	$128, 87(%rsp)
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3_512_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 56(%rax)
	ret
L_sha3_512_64$1:
	leaq	16(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 32(%rsp)
	movq	24(%rcx), %rdx
	xorq	%rdx, 40(%rsp)
	movq	32(%rcx), %rdx
	xorq	%rdx, 48(%rsp)
	movq	40(%rcx), %rdx
	xorq	%rdx, 56(%rsp)
	movq	48(%rcx), %rdx
	xorq	%rdx, 64(%rsp)
	movq	56(%rcx), %rcx
	xorq	%rcx, 72(%rsp)
	xorb	$6, 80(%rsp)
	xorb	$128, 87(%rsp)
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3_512_64$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 56(%rax)
	ret
L_shake256_1120_32$1:
	movq	%rdx, 8(%rsp)
	leaq	40(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 40(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 48(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 56(%rsp)
	movq	24(%rcx), %rcx
	xorq	%rcx, 64(%rsp)
	movq	(%rax), %rcx
	xorq	%rcx, 72(%rsp)
	movq	8(%rax), %rcx
	xorq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	xorq	%rcx, 88(%rsp)
	movq	24(%rax), %rcx
	xorq	%rcx, 96(%rsp)
	movq	32(%rax), %rcx
	xorq	%rcx, 104(%rsp)
	movq	40(%rax), %rcx
	xorq	%rcx, 112(%rsp)
	movq	48(%rax), %rcx
	xorq	%rcx, 120(%rsp)
	movq	56(%rax), %rcx
	xorq	%rcx, 128(%rsp)
	movq	64(%rax), %rcx
	xorq	%rcx, 136(%rsp)
	movq	72(%rax), %rcx
	xorq	%rcx, 144(%rsp)
	movq	80(%rax), %rcx
	xorq	%rcx, 152(%rsp)
	movq	88(%rax), %rcx
	xorq	%rcx, 160(%rsp)
	movq	96(%rax), %rcx
	xorq	%rcx, 168(%rsp)
	movq	%rax, 16(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$12:
	leaq	208(%rsp), %rsp
	movq	$136, %rax
	movq	$984, %rcx
	movq	16(%rsp), %rdx
	addq	$104, %rdx
	jmp 	L_shake256_1120_32$7
L_shake256_1120_32$8:
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_shake256_1120_32$10
L_shake256_1120_32$11:
	movq	(%rdx,%rdi,8), %r8
	xorq	%r8, 40(%rsp,%rdi,8)
	incq	%rdi
L_shake256_1120_32$10:
	cmpq	%rsi, %rdi
	jb  	L_shake256_1120_32$11
	addq	%rax, %rdx
	subq	%rax, %rcx
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$9:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rax
L_shake256_1120_32$7:
	cmpq	%rax, %rcx
	jnb 	L_shake256_1120_32$8
	movb	$31, %sil
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movq	$0, %r8
	jmp 	L_shake256_1120_32$5
L_shake256_1120_32$6:
	movq	(%rdx,%r8,8), %r9
	xorq	%r9, 40(%rsp,%r8,8)
	incq	%r8
L_shake256_1120_32$5:
	cmpq	%rdi, %r8
	jb  	L_shake256_1120_32$6
	shlq	$3, %r8
	jmp 	L_shake256_1120_32$3
L_shake256_1120_32$4:
	movb	(%rdx,%r8), %dil
	xorb	%dil, 40(%rsp,%r8)
	incq	%r8
L_shake256_1120_32$3:
	cmpq	%rcx, %r8
	jb  	L_shake256_1120_32$4
	xorb	%sil, 40(%rsp,%r8)
	addq	$-1, %rax
	xorb	$128, 40(%rsp,%rax)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_1120_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	ret
L_isha3_256$1:
	movq	%rcx, 8(%rsp)
	leaq	40(%rsp), %rcx
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movq	$0, 128(%rcx)
	movq	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, 152(%rcx)
	movq	$0, 160(%rcx)
	movq	$0, 168(%rcx)
	movq	$0, 176(%rcx)
	movq	$0, 184(%rcx)
	movq	$0, 192(%rcx)
	movq	$136, %rcx
	jmp 	L_isha3_256$7
L_isha3_256$8:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movq	$0, %rsi
	jmp 	L_isha3_256$10
L_isha3_256$11:
	movq	(%r8,%rsi,8), %rdi
	xorq	%rdi, 40(%rsp,%rsi,8)
	incq	%rsi
L_isha3_256$10:
	cmpq	%rdx, %rsi
	jb  	L_isha3_256$11
	addq	%rcx, %r8
	subq	%rcx, %rax
	movq	%r8, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_isha3_256$9:
	leaq	208(%rsp), %rsp
	movq	16(%rsp), %r8
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
L_isha3_256$7:
	cmpq	%rcx, %rax
	jnb 	L_isha3_256$8
	movb	$6, %dl
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_isha3_256$5
L_isha3_256$6:
	movq	(%r8,%rdi,8), %r9
	xorq	%r9, 40(%rsp,%rdi,8)
	incq	%rdi
L_isha3_256$5:
	cmpq	%rsi, %rdi
	jb  	L_isha3_256$6
	shlq	$3, %rdi
	jmp 	L_isha3_256$3
L_isha3_256$4:
	movb	(%r8,%rdi), %sil
	xorb	%sil, 40(%rsp,%rdi)
	incq	%rdi
L_isha3_256$3:
	cmpq	%rax, %rdi
	jb  	L_isha3_256$4
	xorb	%dl, 40(%rsp,%rdi)
	addq	$-1, %rcx
	xorb	$128, 40(%rsp,%rcx)
	leaq	40(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_isha3_256$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	ret
L_keccakf1600$1:
	leaq	glob_data + 2968(%rip), %rcx
	leaq	16(%rsp), %rdx
	movq	$0, %rsi
	jmp 	L_keccakf1600$2
L_keccakf1600$3:
	movq	(%rcx,%rsi,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rax), %r11
	movq	8(%rax), %r10
	movq	16(%rax), %rbx
	movq	24(%rax), %rbp
	movq	32(%rax), %r12
	xorq	40(%rax), %r11
	xorq	48(%rax), %r10
	xorq	56(%rax), %rbx
	xorq	64(%rax), %rbp
	xorq	72(%rax), %r12
	xorq	80(%rax), %r11
	xorq	88(%rax), %r10
	xorq	96(%rax), %rbx
	xorq	104(%rax), %rbp
	xorq	112(%rax), %r12
	xorq	120(%rax), %r11
	xorq	128(%rax), %r10
	xorq	136(%rax), %rbx
	xorq	144(%rax), %rbp
	xorq	152(%rax), %r12
	xorq	160(%rax), %r11
	xorq	168(%rax), %r10
	xorq	176(%rax), %rbx
	xorq	184(%rax), %rbp
	xorq	192(%rax), %r12
	movq	%r10, %rdi
	rolq	$1, %rdi
	xorq	%r12, %rdi
	movq	%rbx, %r8
	rolq	$1, %r8
	xorq	%r11, %r8
	movq	%rbp, %r9
	rolq	$1, %r9
	xorq	%r10, %r9
	movq	%r12, %r10
	rolq	$1, %r10
	xorq	%rbx, %r10
	rolq	$1, %r11
	xorq	%rbp, %r11
	movq	(%rax), %rbx
	xorq	%rdi, %rbx
	movq	48(%rax), %rbp
	xorq	%r8, %rbp
	rolq	$44, %rbp
	movq	96(%rax), %r12
	xorq	%r9, %r12
	rolq	$43, %r12
	movq	144(%rax), %r13
	xorq	%r10, %r13
	rolq	$21, %r13
	movq	192(%rax), %r14
	xorq	%r11, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 32(%rdx)
	movq	24(%rax), %rbx
	xorq	%r10, %rbx
	rolq	$28, %rbx
	movq	72(%rax), %rbp
	xorq	%r11, %rbp
	rolq	$20, %rbp
	movq	80(%rax), %r12
	xorq	%rdi, %r12
	rolq	$3, %r12
	movq	128(%rax), %r13
	xorq	%r8, %r13
	rolq	$45, %r13
	movq	176(%rax), %r14
	xorq	%r9, %r14
	rolq	$61, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 72(%rdx)
	movq	8(%rax), %rbx
	xorq	%r8, %rbx
	rolq	$1, %rbx
	movq	56(%rax), %rbp
	xorq	%r9, %rbp
	rolq	$6, %rbp
	movq	104(%rax), %r12
	xorq	%r10, %r12
	rolq	$25, %r12
	movq	152(%rax), %r13
	xorq	%r11, %r13
	rolq	$8, %r13
	movq	160(%rax), %r14
	xorq	%rdi, %r14
	rolq	$18, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 112(%rdx)
	movq	32(%rax), %rbx
	xorq	%r11, %rbx
	rolq	$27, %rbx
	movq	40(%rax), %rbp
	xorq	%rdi, %rbp
	rolq	$36, %rbp
	movq	88(%rax), %r12
	xorq	%r8, %r12
	rolq	$10, %r12
	movq	136(%rax), %r13
	xorq	%r9, %r13
	rolq	$15, %r13
	movq	184(%rax), %r14
	xorq	%r10, %r14
	rolq	$56, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rdx)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rdx)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rdx)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rdx)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 152(%rdx)
	movq	16(%rax), %rbx
	xorq	%r9, %rbx
	rolq	$62, %rbx
	movq	64(%rax), %r9
	xorq	%r10, %r9
	rolq	$55, %r9
	movq	112(%rax), %r10
	xorq	%r11, %r10
	rolq	$39, %r10
	movq	120(%rax), %r11
	xorq	%rdi, %r11
	rolq	$41, %r11
	movq	168(%rax), %rdi
	xorq	%r8, %rdi
	rolq	$2, %rdi
	andnq	%r10, %r9, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rdx)
	andnq	%r11, %r10, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rdx)
	andnq	%rdi, %r11, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rdx)
	andnq	%rbx, %rdi, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rdx)
	andnq	%r9, %rbx, %r8
	xorq	%rdi, %r8
	movq	%r8, 192(%rdx)
	movq	8(%rcx,%rsi,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdx), %r11
	movq	8(%rdx), %r10
	movq	16(%rdx), %rbx
	movq	24(%rdx), %rbp
	movq	32(%rdx), %r12
	xorq	40(%rdx), %r11
	xorq	48(%rdx), %r10
	xorq	56(%rdx), %rbx
	xorq	64(%rdx), %rbp
	xorq	72(%rdx), %r12
	xorq	80(%rdx), %r11
	xorq	88(%rdx), %r10
	xorq	96(%rdx), %rbx
	xorq	104(%rdx), %rbp
	xorq	112(%rdx), %r12
	xorq	120(%rdx), %r11
	xorq	128(%rdx), %r10
	xorq	136(%rdx), %rbx
	xorq	144(%rdx), %rbp
	xorq	152(%rdx), %r12
	xorq	160(%rdx), %r11
	xorq	168(%rdx), %r10
	xorq	176(%rdx), %rbx
	xorq	184(%rdx), %rbp
	xorq	192(%rdx), %r12
	movq	%r10, %rdi
	rolq	$1, %rdi
	xorq	%r12, %rdi
	movq	%rbx, %r8
	rolq	$1, %r8
	xorq	%r11, %r8
	movq	%rbp, %r9
	rolq	$1, %r9
	xorq	%r10, %r9
	movq	%r12, %r10
	rolq	$1, %r10
	xorq	%rbx, %r10
	rolq	$1, %r11
	xorq	%rbp, %r11
	movq	(%rdx), %rbx
	xorq	%rdi, %rbx
	movq	48(%rdx), %rbp
	xorq	%r8, %rbp
	rolq	$44, %rbp
	movq	96(%rdx), %r12
	xorq	%r9, %r12
	rolq	$43, %r12
	movq	144(%rdx), %r13
	xorq	%r10, %r13
	rolq	$21, %r13
	movq	192(%rdx), %r14
	xorq	%r11, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 32(%rax)
	movq	24(%rdx), %rbx
	xorq	%r10, %rbx
	rolq	$28, %rbx
	movq	72(%rdx), %rbp
	xorq	%r11, %rbp
	rolq	$20, %rbp
	movq	80(%rdx), %r12
	xorq	%rdi, %r12
	rolq	$3, %r12
	movq	128(%rdx), %r13
	xorq	%r8, %r13
	rolq	$45, %r13
	movq	176(%rdx), %r14
	xorq	%r9, %r14
	rolq	$61, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 72(%rax)
	movq	8(%rdx), %rbx
	xorq	%r8, %rbx
	rolq	$1, %rbx
	movq	56(%rdx), %rbp
	xorq	%r9, %rbp
	rolq	$6, %rbp
	movq	104(%rdx), %r12
	xorq	%r10, %r12
	rolq	$25, %r12
	movq	152(%rdx), %r13
	xorq	%r11, %r13
	rolq	$8, %r13
	movq	160(%rdx), %r14
	xorq	%rdi, %r14
	rolq	$18, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 112(%rax)
	movq	32(%rdx), %rbx
	xorq	%r11, %rbx
	rolq	$27, %rbx
	movq	40(%rdx), %rbp
	xorq	%rdi, %rbp
	rolq	$36, %rbp
	movq	88(%rdx), %r12
	xorq	%r8, %r12
	rolq	$10, %r12
	movq	136(%rdx), %r13
	xorq	%r9, %r13
	rolq	$15, %r13
	movq	184(%rdx), %r14
	xorq	%r10, %r14
	rolq	$56, %r14
	andnq	%r12, %rbp, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rax)
	andnq	%r13, %r12, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rax)
	andnq	%r14, %r13, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rax)
	andnq	%rbx, %r14, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rax)
	andnq	%rbp, %rbx, %rbx
	xorq	%r14, %rbx
	movq	%rbx, 152(%rax)
	movq	16(%rdx), %rbx
	xorq	%r9, %rbx
	rolq	$62, %rbx
	movq	64(%rdx), %r9
	xorq	%r10, %r9
	rolq	$55, %r9
	movq	112(%rdx), %r10
	xorq	%r11, %r10
	rolq	$39, %r10
	movq	120(%rdx), %r11
	xorq	%rdi, %r11
	rolq	$41, %r11
	movq	168(%rdx), %rdi
	xorq	%r8, %rdi
	rolq	$2, %rdi
	andnq	%r10, %r9, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rax)
	andnq	%r11, %r10, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rax)
	andnq	%rdi, %r11, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rax)
	andnq	%rbx, %rdi, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rax)
	andnq	%r9, %rbx, %r8
	xorq	%rdi, %r8
	movq	%r8, 192(%rax)
	addq	$2, %rsi
L_keccakf1600$2:
	cmpq	$23, %rsi
	jb  	L_keccakf1600$3
	ret
L_nttunpack$1:
	vmovdqu	(%rax), %ymm1
	vmovdqu	32(%rax), %ymm3
	vmovdqu	64(%rax), %ymm4
	vmovdqu	96(%rax), %ymm5
	vmovdqu	128(%rax), %ymm2
	vmovdqu	160(%rax), %ymm6
	vmovdqu	192(%rax), %ymm7
	vmovdqu	224(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$170, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$170, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$170, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$170, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$170, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$170, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$170, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$170, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, (%rax)
	vmovdqu	%ymm4, 32(%rax)
	vmovdqu	%ymm8, 64(%rax)
	vmovdqu	%ymm0, 96(%rax)
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm1, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm1
	vmovdqu	288(%rax), %ymm3
	vmovdqu	320(%rax), %ymm4
	vmovdqu	352(%rax), %ymm5
	vmovdqu	384(%rax), %ymm2
	vmovdqu	416(%rax), %ymm6
	vmovdqu	448(%rax), %ymm7
	vmovdqu	480(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$170, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$170, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$170, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$170, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$170, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$170, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$170, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$170, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$170, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$170, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$170, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, 256(%rax)
	vmovdqu	%ymm4, 288(%rax)
	vmovdqu	%ymm8, 320(%rax)
	vmovdqu	%ymm0, 352(%rax)
	vmovdqu	%ymm5, 384(%rax)
	vmovdqu	%ymm1, 416(%rax)
	vmovdqu	%ymm6, 448(%rax)
	vmovdqu	%ymm2, 480(%rax)
	ret
	.data
	.p2align	5
_glob_data:
glob_data:
G$pvc_shufbidx_s:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	8
G$pvd_shufbdidx_s:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
G$pd_jshufbidx:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
G$pc_permidx_s:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
G$KeccakF1600RoundConstants:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$rho8:
	.byte	7
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	15
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	23
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	31
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
G$rho56:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	0
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	8
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	16
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	24
G$shake_sep:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$jdmontx16:
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
	.byte	73
	.byte	5
G$hhqx16:
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
	.byte	64
	.byte	3
G$hqx16_m1:
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
	.byte	-128
	.byte	6
G$hqx16_p1:
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
	.byte	-127
	.byte	6
G$maskx16:
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
	.byte	-1
	.byte	15
G$jflox16:
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
	.byte	-95
	.byte	-40
G$jfhix16:
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
	.byte	-95
	.byte	5
G$jvx16:
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
	.byte	-65
	.byte	78
G$jqinvx16:
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
	.byte	1
	.byte	-13
G$jqx16:
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
	.byte	1
	.byte	13
G$jzetas_inv_exp:
	.byte	-91
	.byte	-91
	.byte	-76
	.byte	-31
	.byte	34
	.byte	79
	.byte	52
	.byte	93
	.byte	35
	.byte	68
	.byte	86
	.byte	-91
	.byte	-25
	.byte	78
	.byte	-6
	.byte	83
	.byte	123
	.byte	-57
	.byte	37
	.byte	43
	.byte	55
	.byte	58
	.byte	-120
	.byte	24
	.byte	-127
	.byte	126
	.byte	5
	.byte	-60
	.byte	-97
	.byte	-9
	.byte	-72
	.byte	-80
	.byte	-91
	.byte	6
	.byte	-76
	.byte	5
	.byte	34
	.byte	9
	.byte	52
	.byte	1
	.byte	35
	.byte	11
	.byte	86
	.byte	3
	.byte	-25
	.byte	9
	.byte	-6
	.byte	5
	.byte	123
	.byte	6
	.byte	37
	.byte	12
	.byte	55
	.byte	5
	.byte	-120
	.byte	0
	.byte	-127
	.byte	11
	.byte	5
	.byte	5
	.byte	-97
	.byte	10
	.byte	-72
	.byte	8
	.byte	15
	.byte	68
	.byte	67
	.byte	-94
	.byte	29
	.byte	-112
	.byte	108
	.byte	-124
	.byte	102
	.byte	-43
	.byte	-26
	.byte	87
	.byte	-2
	.byte	30
	.byte	-95
	.byte	-41
	.byte	-93
	.byte	-67
	.byte	106
	.byte	-95
	.byte	63
	.byte	-43
	.byte	-65
	.byte	81
	.byte	-71
	.byte	-96
	.byte	-41
	.byte	28
	.byte	-90
	.byte	-100
	.byte	-48
	.byte	121
	.byte	15
	.byte	7
	.byte	67
	.byte	9
	.byte	29
	.byte	9
	.byte	108
	.byte	0
	.byte	102
	.byte	3
	.byte	-26
	.byte	5
	.byte	-2
	.byte	4
	.byte	-95
	.byte	4
	.byte	-93
	.byte	4
	.byte	106
	.byte	3
	.byte	63
	.byte	8
	.byte	-65
	.byte	4
	.byte	-71
	.byte	5
	.byte	-41
	.byte	7
	.byte	-90
	.byte	10
	.byte	-48
	.byte	9
	.byte	-5
	.byte	69
	.byte	92
	.byte	94
	.byte	41
	.byte	-17
	.byte	65
	.byte	-66
	.byte	-43
	.byte	49
	.byte	-28
	.byte	113
	.byte	64
	.byte	-55
	.byte	-114
	.byte	-53
	.byte	-73
	.byte	-72
	.byte	-9
	.byte	117
	.byte	-115
	.byte	-36
	.byte	-106
	.byte	110
	.byte	-61
	.byte	34
	.byte	15
	.byte	62
	.byte	90
	.byte	110
	.byte	85
	.byte	-78
	.byte	-5
	.byte	4
	.byte	92
	.byte	10
	.byte	41
	.byte	4
	.byte	65
	.byte	11
	.byte	-43
	.byte	2
	.byte	-28
	.byte	5
	.byte	64
	.byte	9
	.byte	-114
	.byte	1
	.byte	-73
	.byte	3
	.byte	-9
	.byte	0
	.byte	-115
	.byte	5
	.byte	-106
	.byte	12
	.byte	-61
	.byte	9
	.byte	15
	.byte	1
	.byte	90
	.byte	0
	.byte	85
	.byte	3
	.byte	35
	.byte	63
	.byte	35
	.byte	63
	.byte	-51
	.byte	-105
	.byte	-51
	.byte	-105
	.byte	102
	.byte	-35
	.byte	102
	.byte	-35
	.byte	6
	.byte	-72
	.byte	6
	.byte	-72
	.byte	-95
	.byte	-35
	.byte	-95
	.byte	-35
	.byte	37
	.byte	41
	.byte	37
	.byte	41
	.byte	8
	.byte	-95
	.byte	8
	.byte	-95
	.byte	-87
	.byte	109
	.byte	-87
	.byte	109
	.byte	35
	.byte	6
	.byte	35
	.byte	6
	.byte	-51
	.byte	0
	.byte	-51
	.byte	0
	.byte	102
	.byte	11
	.byte	102
	.byte	11
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	-95
	.byte	10
	.byte	-95
	.byte	10
	.byte	37
	.byte	10
	.byte	37
	.byte	10
	.byte	8
	.byte	9
	.byte	8
	.byte	9
	.byte	-87
	.byte	2
	.byte	-87
	.byte	2
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	69
	.byte	-122
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-62
	.byte	43
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	-78
	.byte	-6
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	63
	.byte	-42
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	69
	.byte	7
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-62
	.byte	5
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	-78
	.byte	4
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	63
	.byte	9
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	55
	.byte	65
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	-30
	.byte	-111
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	55
	.byte	12
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-30
	.byte	11
	.byte	-19
	.byte	-4
	.byte	-19
	.byte	-4
	.byte	-19
	.byte	5
	.byte	-19
	.byte	5
	.byte	75
	.byte	49
	.byte	-72
	.byte	-77
	.byte	-92
	.byte	-73
	.byte	125
	.byte	-79
	.byte	-94
	.byte	-50
	.byte	54
	.byte	73
	.byte	-109
	.byte	-119
	.byte	-9
	.byte	126
	.byte	-116
	.byte	-22
	.byte	-52
	.byte	-91
	.byte	-21
	.byte	17
	.byte	-74
	.byte	-52
	.byte	-104
	.byte	84
	.byte	-102
	.byte	55
	.byte	-74
	.byte	-53
	.byte	83
	.byte	-44
	.byte	75
	.byte	0
	.byte	-72
	.byte	11
	.byte	-92
	.byte	11
	.byte	125
	.byte	10
	.byte	-94
	.byte	8
	.byte	54
	.byte	7
	.byte	-109
	.byte	0
	.byte	-9
	.byte	9
	.byte	-116
	.byte	6
	.byte	-52
	.byte	1
	.byte	-21
	.byte	0
	.byte	-74
	.byte	10
	.byte	-104
	.byte	12
	.byte	-102
	.byte	9
	.byte	-74
	.byte	9
	.byte	83
	.byte	11
	.byte	-100
	.byte	20
	.byte	95
	.byte	56
	.byte	104
	.byte	-69
	.byte	54
	.byte	72
	.byte	90
	.byte	112
	.byte	9
	.byte	-114
	.byte	122
	.byte	-42
	.byte	-10
	.byte	-126
	.byte	-37
	.byte	-25
	.byte	35
	.byte	58
	.byte	80
	.byte	-4
	.byte	91
	.byte	108
	.byte	-13
	.byte	-81
	.byte	-29
	.byte	125
	.byte	-42
	.byte	44
	.byte	79
	.byte	1
	.byte	-100
	.byte	0
	.byte	95
	.byte	11
	.byte	104
	.byte	3
	.byte	54
	.byte	6
	.byte	90
	.byte	2
	.byte	9
	.byte	3
	.byte	122
	.byte	8
	.byte	-10
	.byte	0
	.byte	-37
	.byte	6
	.byte	35
	.byte	1
	.byte	80
	.byte	12
	.byte	91
	.byte	11
	.byte	-13
	.byte	6
	.byte	-29
	.byte	4
	.byte	-42
	.byte	10
	.byte	79
	.byte	4
	.byte	68
	.byte	-109
	.byte	-125
	.byte	101
	.byte	-118
	.byte	2
	.byte	82
	.byte	-36
	.byte	-102
	.byte	48
	.byte	64
	.byte	-63
	.byte	8
	.byte	-104
	.byte	-3
	.byte	49
	.byte	8
	.byte	-98
	.byte	26
	.byte	-81
	.byte	46
	.byte	-79
	.byte	13
	.byte	92
	.byte	10
	.byte	-121
	.byte	40
	.byte	-6
	.byte	117
	.byte	25
	.byte	58
	.byte	22
	.byte	68
	.byte	7
	.byte	-125
	.byte	12
	.byte	-118
	.byte	4
	.byte	82
	.byte	6
	.byte	-102
	.byte	2
	.byte	64
	.byte	1
	.byte	8
	.byte	0
	.byte	-3
	.byte	10
	.byte	8
	.byte	6
	.byte	26
	.byte	1
	.byte	46
	.byte	7
	.byte	13
	.byte	5
	.byte	10
	.byte	9
	.byte	40
	.byte	2
	.byte	117
	.byte	10
	.byte	58
	.byte	8
	.byte	-126
	.byte	102
	.byte	-126
	.byte	102
	.byte	66
	.byte	-84
	.byte	66
	.byte	-84
	.byte	79
	.byte	4
	.byte	79
	.byte	4
	.byte	61
	.byte	-22
	.byte	61
	.byte	-22
	.byte	-126
	.byte	113
	.byte	-126
	.byte	113
	.byte	-7
	.byte	102
	.byte	-7
	.byte	102
	.byte	45
	.byte	-68
	.byte	45
	.byte	-68
	.byte	-60
	.byte	22
	.byte	-60
	.byte	22
	.byte	-126
	.byte	0
	.byte	-126
	.byte	0
	.byte	66
	.byte	6
	.byte	66
	.byte	6
	.byte	79
	.byte	7
	.byte	79
	.byte	7
	.byte	61
	.byte	3
	.byte	61
	.byte	3
	.byte	-126
	.byte	11
	.byte	-126
	.byte	11
	.byte	-7
	.byte	11
	.byte	-7
	.byte	11
	.byte	45
	.byte	5
	.byte	45
	.byte	5
	.byte	-60
	.byte	10
	.byte	-60
	.byte	10
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	75
	.byte	61
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-40
	.byte	14
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-109
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	-85
	.byte	81
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	75
	.byte	12
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-40
	.byte	6
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-109
	.byte	10
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	-85
	.byte	0
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	115
	.byte	48
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	44
	.byte	-53
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	115
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	44
	.byte	7
	.byte	103
	.byte	-58
	.byte	103
	.byte	-58
	.byte	103
	.byte	1
	.byte	103
	.byte	1
	.byte	-116
	.byte	-21
	.byte	-116
	.byte	-21
	.byte	-116
	.byte	7
	.byte	-116
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$jzetas_exp:
	.byte	11
	.byte	123
	.byte	11
	.byte	123
	.byte	11
	.byte	10
	.byte	11
	.byte	10
	.byte	-102
	.byte	57
	.byte	-102
	.byte	57
	.byte	-102
	.byte	11
	.byte	-102
	.byte	11
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-43
	.byte	52
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-114
	.byte	-49
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-43
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	-114
	.byte	5
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	86
	.byte	-82
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	110
	.byte	108
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	41
	.byte	-15
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	-74
	.byte	-62
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	86
	.byte	12
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	110
	.byte	2
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	41
	.byte	6
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	-74
	.byte	0
	.byte	61
	.byte	-23
	.byte	61
	.byte	-23
	.byte	-44
	.byte	67
	.byte	-44
	.byte	67
	.byte	8
	.byte	-103
	.byte	8
	.byte	-103
	.byte	127
	.byte	-114
	.byte	127
	.byte	-114
	.byte	-60
	.byte	21
	.byte	-60
	.byte	21
	.byte	-78
	.byte	-5
	.byte	-78
	.byte	-5
	.byte	-65
	.byte	83
	.byte	-65
	.byte	83
	.byte	127
	.byte	-103
	.byte	127
	.byte	-103
	.byte	61
	.byte	2
	.byte	61
	.byte	2
	.byte	-44
	.byte	7
	.byte	-44
	.byte	7
	.byte	8
	.byte	1
	.byte	8
	.byte	1
	.byte	127
	.byte	1
	.byte	127
	.byte	1
	.byte	-60
	.byte	9
	.byte	-60
	.byte	9
	.byte	-78
	.byte	5
	.byte	-78
	.byte	5
	.byte	-65
	.byte	6
	.byte	-65
	.byte	6
	.byte	127
	.byte	12
	.byte	127
	.byte	12
	.byte	-57
	.byte	-23
	.byte	-116
	.byte	-26
	.byte	-39
	.byte	5
	.byte	-9
	.byte	120
	.byte	-12
	.byte	-93
	.byte	-45
	.byte	78
	.byte	-25
	.byte	80
	.byte	-7
	.byte	97
	.byte	4
	.byte	-50
	.byte	-7
	.byte	103
	.byte	-63
	.byte	62
	.byte	103
	.byte	-49
	.byte	-81
	.byte	35
	.byte	119
	.byte	-3
	.byte	126
	.byte	-102
	.byte	-67
	.byte	108
	.byte	-57
	.byte	4
	.byte	-116
	.byte	2
	.byte	-39
	.byte	10
	.byte	-9
	.byte	3
	.byte	-12
	.byte	7
	.byte	-45
	.byte	5
	.byte	-25
	.byte	11
	.byte	-7
	.byte	6
	.byte	4
	.byte	2
	.byte	-7
	.byte	12
	.byte	-63
	.byte	11
	.byte	103
	.byte	10
	.byte	-81
	.byte	6
	.byte	119
	.byte	8
	.byte	126
	.byte	0
	.byte	-67
	.byte	5
	.byte	-78
	.byte	-2
	.byte	43
	.byte	-45
	.byte	30
	.byte	-126
	.byte	14
	.byte	80
	.byte	-90
	.byte	-109
	.byte	-79
	.byte	3
	.byte	-34
	.byte	-59
	.byte	38
	.byte	24
	.byte	11
	.byte	125
	.byte	-121
	.byte	41
	.byte	-8
	.byte	113
	.byte	-89
	.byte	-113
	.byte	-53
	.byte	-73
	.byte	-103
	.byte	68
	.byte	-94
	.byte	-57
	.byte	101
	.byte	-21
	.byte	-78
	.byte	8
	.byte	43
	.byte	2
	.byte	30
	.byte	8
	.byte	14
	.byte	6
	.byte	-90
	.byte	1
	.byte	-79
	.byte	0
	.byte	-34
	.byte	11
	.byte	38
	.byte	6
	.byte	11
	.byte	12
	.byte	-121
	.byte	4
	.byte	-8
	.byte	9
	.byte	-89
	.byte	10
	.byte	-53
	.byte	6
	.byte	-103
	.byte	9
	.byte	-94
	.byte	1
	.byte	101
	.byte	12
	.byte	-82
	.byte	43
	.byte	75
	.byte	52
	.byte	103
	.byte	-56
	.byte	105
	.byte	-85
	.byte	75
	.byte	51
	.byte	22
	.byte	-18
	.byte	53
	.byte	90
	.byte	117
	.byte	21
	.byte	10
	.byte	-127
	.byte	110
	.byte	118
	.byte	-53
	.byte	-74
	.byte	95
	.byte	49
	.byte	-124
	.byte	78
	.byte	93
	.byte	72
	.byte	73
	.byte	76
	.byte	-74
	.byte	-50
	.byte	-82
	.byte	1
	.byte	75
	.byte	3
	.byte	103
	.byte	3
	.byte	105
	.byte	0
	.byte	75
	.byte	2
	.byte	22
	.byte	12
	.byte	53
	.byte	11
	.byte	117
	.byte	6
	.byte	10
	.byte	3
	.byte	110
	.byte	12
	.byte	-53
	.byte	5
	.byte	95
	.byte	4
	.byte	-124
	.byte	2
	.byte	93
	.byte	1
	.byte	73
	.byte	1
	.byte	-74
	.byte	12
	.byte	20
	.byte	3
	.byte	20
	.byte	3
	.byte	20
	.byte	7
	.byte	20
	.byte	7
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	31
	.byte	110
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	-54
	.byte	-66
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	31
	.byte	1
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-54
	.byte	0
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	-62
	.byte	41
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	79
	.byte	5
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	63
	.byte	-44
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-68
	.byte	121
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	-62
	.byte	3
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	79
	.byte	8
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	63
	.byte	7
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	-68
	.byte	5
	.byte	88
	.byte	-110
	.byte	88
	.byte	-110
	.byte	-7
	.byte	94
	.byte	-7
	.byte	94
	.byte	-36
	.byte	-42
	.byte	-36
	.byte	-42
	.byte	96
	.byte	34
	.byte	96
	.byte	34
	.byte	-5
	.byte	71
	.byte	-5
	.byte	71
	.byte	-101
	.byte	34
	.byte	-101
	.byte	34
	.byte	52
	.byte	104
	.byte	52
	.byte	104
	.byte	-34
	.byte	-64
	.byte	-34
	.byte	-64
	.byte	88
	.byte	10
	.byte	88
	.byte	10
	.byte	-7
	.byte	3
	.byte	-7
	.byte	3
	.byte	-36
	.byte	2
	.byte	-36
	.byte	2
	.byte	96
	.byte	2
	.byte	96
	.byte	2
	.byte	-5
	.byte	6
	.byte	-5
	.byte	6
	.byte	-101
	.byte	1
	.byte	-101
	.byte	1
	.byte	52
	.byte	12
	.byte	52
	.byte	12
	.byte	-34
	.byte	6
	.byte	-34
	.byte	6
	.byte	-84
	.byte	77
	.byte	-89
	.byte	-111
	.byte	-14
	.byte	-63
	.byte	62
	.byte	-35
	.byte	107
	.byte	-111
	.byte	116
	.byte	35
	.byte	10
	.byte	-118
	.byte	74
	.byte	71
	.byte	115
	.byte	52
	.byte	-63
	.byte	54
	.byte	29
	.byte	-114
	.byte	44
	.byte	-50
	.byte	-64
	.byte	65
	.byte	-40
	.byte	16
	.byte	-91
	.byte	-95
	.byte	6
	.byte	-70
	.byte	-84
	.byte	9
	.byte	-89
	.byte	12
	.byte	-14
	.byte	11
	.byte	62
	.byte	3
	.byte	107
	.byte	0
	.byte	116
	.byte	7
	.byte	10
	.byte	12
	.byte	74
	.byte	9
	.byte	115
	.byte	11
	.byte	-63
	.byte	3
	.byte	29
	.byte	7
	.byte	44
	.byte	10
	.byte	-64
	.byte	1
	.byte	-40
	.byte	8
	.byte	-91
	.byte	2
	.byte	6
	.byte	8
	.byte	49
	.byte	-122
	.byte	91
	.byte	99
	.byte	42
	.byte	-29
	.byte	72
	.byte	95
	.byte	66
	.byte	-82
	.byte	-62
	.byte	42
	.byte	-105
	.byte	94
	.byte	94
	.byte	66
	.byte	96
	.byte	40
	.byte	3
	.byte	-31
	.byte	27
	.byte	-88
	.byte	-101
	.byte	42
	.byte	-107
	.byte	123
	.byte	-28
	.byte	111
	.byte	-66
	.byte	93
	.byte	-14
	.byte	-69
	.byte	49
	.byte	3
	.byte	91
	.byte	2
	.byte	42
	.byte	5
	.byte	72
	.byte	7
	.byte	66
	.byte	8
	.byte	-62
	.byte	4
	.byte	-105
	.byte	9
	.byte	94
	.byte	8
	.byte	96
	.byte	8
	.byte	3
	.byte	8
	.byte	27
	.byte	7
	.byte	-101
	.byte	9
	.byte	-107
	.byte	12
	.byte	-28
	.byte	3
	.byte	-66
	.byte	3
	.byte	-14
	.byte	5
	.byte	73
	.byte	79
	.byte	98
	.byte	8
	.byte	-4
	.byte	59
	.byte	-128
	.byte	-127
	.byte	121
	.byte	-25
	.byte	-54
	.byte	-59
	.byte	-36
	.byte	-44
	.byte	-122
	.byte	56
	.byte	7
	.byte	-84
	.byte	26
	.byte	-79
	.byte	-85
	.byte	90
	.byte	-34
	.byte	-69
	.byte	-51
	.byte	-94
	.byte	-33
	.byte	-80
	.byte	77
	.byte	30
	.byte	92
	.byte	90
	.byte	73
	.byte	4
	.byte	98
	.byte	2
	.byte	-4
	.byte	7
	.byte	-128
	.byte	1
	.byte	121
	.byte	12
	.byte	-54
	.byte	7
	.byte	-36
	.byte	0
	.byte	-122
	.byte	6
	.byte	7
	.byte	7
	.byte	26
	.byte	3
	.byte	-85
	.byte	9
	.byte	-34
	.byte	1
	.byte	-51
	.byte	11
	.byte	-33
	.byte	3
	.byte	77
	.byte	7
	.byte	92
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pfm_idx_s:
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	2
	.byte	3
	.byte	6
	.byte	7
	.byte	10
	.byte	11
	.byte	14
	.byte	15
G$pfm_shift_s:
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pvc_sllvdidx_s:
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$pvc_shift2_s:
	.byte	1
	.byte	0
	.byte	0
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.byte	4
G$pvd_sllvdidx_s:
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
G$KECCAK1600_RC:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
G$pvd_mask_s:
	.byte	-8
	.byte	31
	.byte	-32
	.byte	127
G$pvd_q_s:
	.byte	4
	.byte	52
	.byte	1
	.byte	13
G$pd_shift_s:
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
G$pd_mask_s:
	.byte	15
	.byte	0
	.byte	-16
	.byte	0
G$pvc_mask_s:
	.byte	-1
	.byte	3
G$pvc_shift1_s:
	.byte	0
	.byte	16
G$pvc_off_s:
	.byte	15
	.byte	0
G$pc_shift2_s:
	.byte	1
	.byte	16
G$pc_mask_s:
	.byte	15
	.byte	0
G$pc_shift1_s:
	.byte	0
	.byte	2
G$XWING_LABEL:
	.byte	92
	.byte	46
	.byte	47
	.byte	47
	.byte	94
	.byte	92
G$cbd_jshufbidx:
	.byte	0
	.byte	1
	.byte	2
	.byte	-1
	.byte	3
	.byte	4
	.byte	5
	.byte	-1
	.byte	6
	.byte	7
	.byte	8
	.byte	-1
	.byte	9
	.byte	10
	.byte	11
	.byte	-1
	.byte	4
	.byte	5
	.byte	6
	.byte	-1
	.byte	7
	.byte	8
	.byte	9
	.byte	-1
	.byte	10
	.byte	11
	.byte	12
	.byte	-1
	.byte	13
	.byte	14
	.byte	15
	.byte	-1
G$mqinvx16:
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
	.byte	-5
	.byte	58
G$jzetas_inv:
	.byte	-91
	.byte	6
	.byte	15
	.byte	7
	.byte	-76
	.byte	5
	.byte	67
	.byte	9
	.byte	34
	.byte	9
	.byte	29
	.byte	9
	.byte	52
	.byte	1
	.byte	108
	.byte	0
	.byte	35
	.byte	11
	.byte	102
	.byte	3
	.byte	86
	.byte	3
	.byte	-26
	.byte	5
	.byte	-25
	.byte	9
	.byte	-2
	.byte	4
	.byte	-6
	.byte	5
	.byte	-95
	.byte	4
	.byte	123
	.byte	6
	.byte	-93
	.byte	4
	.byte	37
	.byte	12
	.byte	106
	.byte	3
	.byte	55
	.byte	5
	.byte	63
	.byte	8
	.byte	-120
	.byte	0
	.byte	-65
	.byte	4
	.byte	-127
	.byte	11
	.byte	-71
	.byte	5
	.byte	5
	.byte	5
	.byte	-41
	.byte	7
	.byte	-97
	.byte	10
	.byte	-90
	.byte	10
	.byte	-72
	.byte	8
	.byte	-48
	.byte	9
	.byte	75
	.byte	0
	.byte	-100
	.byte	0
	.byte	-72
	.byte	11
	.byte	95
	.byte	11
	.byte	-92
	.byte	11
	.byte	104
	.byte	3
	.byte	125
	.byte	10
	.byte	54
	.byte	6
	.byte	-94
	.byte	8
	.byte	90
	.byte	2
	.byte	54
	.byte	7
	.byte	9
	.byte	3
	.byte	-109
	.byte	0
	.byte	122
	.byte	8
	.byte	-9
	.byte	9
	.byte	-10
	.byte	0
	.byte	-116
	.byte	6
	.byte	-37
	.byte	6
	.byte	-52
	.byte	1
	.byte	35
	.byte	1
	.byte	-21
	.byte	0
	.byte	80
	.byte	12
	.byte	-74
	.byte	10
	.byte	91
	.byte	11
	.byte	-104
	.byte	12
	.byte	-13
	.byte	6
	.byte	-102
	.byte	9
	.byte	-29
	.byte	4
	.byte	-74
	.byte	9
	.byte	-42
	.byte	10
	.byte	83
	.byte	11
	.byte	79
	.byte	4
	.byte	-5
	.byte	4
	.byte	92
	.byte	10
	.byte	41
	.byte	4
	.byte	65
	.byte	11
	.byte	-43
	.byte	2
	.byte	-28
	.byte	5
	.byte	64
	.byte	9
	.byte	-114
	.byte	1
	.byte	-73
	.byte	3
	.byte	-9
	.byte	0
	.byte	-115
	.byte	5
	.byte	-106
	.byte	12
	.byte	-61
	.byte	9
	.byte	15
	.byte	1
	.byte	90
	.byte	0
	.byte	85
	.byte	3
	.byte	68
	.byte	7
	.byte	-125
	.byte	12
	.byte	-118
	.byte	4
	.byte	82
	.byte	6
	.byte	-102
	.byte	2
	.byte	64
	.byte	1
	.byte	8
	.byte	0
	.byte	-3
	.byte	10
	.byte	8
	.byte	6
	.byte	26
	.byte	1
	.byte	46
	.byte	7
	.byte	13
	.byte	5
	.byte	10
	.byte	9
	.byte	40
	.byte	2
	.byte	117
	.byte	10
	.byte	58
	.byte	8
	.byte	35
	.byte	6
	.byte	-51
	.byte	0
	.byte	102
	.byte	11
	.byte	6
	.byte	6
	.byte	-95
	.byte	10
	.byte	37
	.byte	10
	.byte	8
	.byte	9
	.byte	-87
	.byte	2
	.byte	-126
	.byte	0
	.byte	66
	.byte	6
	.byte	79
	.byte	7
	.byte	61
	.byte	3
	.byte	-126
	.byte	11
	.byte	-7
	.byte	11
	.byte	45
	.byte	5
	.byte	-60
	.byte	10
	.byte	69
	.byte	7
	.byte	-62
	.byte	5
	.byte	-78
	.byte	4
	.byte	63
	.byte	9
	.byte	75
	.byte	12
	.byte	-40
	.byte	6
	.byte	-109
	.byte	10
	.byte	-85
	.byte	0
	.byte	55
	.byte	12
	.byte	-30
	.byte	11
	.byte	115
	.byte	7
	.byte	44
	.byte	7
	.byte	-19
	.byte	5
	.byte	103
	.byte	1
	.byte	-10
	.byte	2
	.byte	-95
	.byte	5
G$jzetas:
	.byte	-19
	.byte	8
	.byte	11
	.byte	10
	.byte	-102
	.byte	11
	.byte	20
	.byte	7
	.byte	-43
	.byte	5
	.byte	-114
	.byte	5
	.byte	31
	.byte	1
	.byte	-54
	.byte	0
	.byte	86
	.byte	12
	.byte	110
	.byte	2
	.byte	41
	.byte	6
	.byte	-74
	.byte	0
	.byte	-62
	.byte	3
	.byte	79
	.byte	8
	.byte	63
	.byte	7
	.byte	-68
	.byte	5
	.byte	61
	.byte	2
	.byte	-44
	.byte	7
	.byte	8
	.byte	1
	.byte	127
	.byte	1
	.byte	-60
	.byte	9
	.byte	-78
	.byte	5
	.byte	-65
	.byte	6
	.byte	127
	.byte	12
	.byte	88
	.byte	10
	.byte	-7
	.byte	3
	.byte	-36
	.byte	2
	.byte	96
	.byte	2
	.byte	-5
	.byte	6
	.byte	-101
	.byte	1
	.byte	52
	.byte	12
	.byte	-34
	.byte	6
	.byte	-57
	.byte	4
	.byte	-116
	.byte	2
	.byte	-39
	.byte	10
	.byte	-9
	.byte	3
	.byte	-12
	.byte	7
	.byte	-45
	.byte	5
	.byte	-25
	.byte	11
	.byte	-7
	.byte	6
	.byte	4
	.byte	2
	.byte	-7
	.byte	12
	.byte	-63
	.byte	11
	.byte	103
	.byte	10
	.byte	-81
	.byte	6
	.byte	119
	.byte	8
	.byte	126
	.byte	0
	.byte	-67
	.byte	5
	.byte	-84
	.byte	9
	.byte	-89
	.byte	12
	.byte	-14
	.byte	11
	.byte	62
	.byte	3
	.byte	107
	.byte	0
	.byte	116
	.byte	7
	.byte	10
	.byte	12
	.byte	74
	.byte	9
	.byte	115
	.byte	11
	.byte	-63
	.byte	3
	.byte	29
	.byte	7
	.byte	44
	.byte	10
	.byte	-64
	.byte	1
	.byte	-40
	.byte	8
	.byte	-91
	.byte	2
	.byte	6
	.byte	8
	.byte	-78
	.byte	8
	.byte	-82
	.byte	1
	.byte	43
	.byte	2
	.byte	75
	.byte	3
	.byte	30
	.byte	8
	.byte	103
	.byte	3
	.byte	14
	.byte	6
	.byte	105
	.byte	0
	.byte	-90
	.byte	1
	.byte	75
	.byte	2
	.byte	-79
	.byte	0
	.byte	22
	.byte	12
	.byte	-34
	.byte	11
	.byte	53
	.byte	11
	.byte	38
	.byte	6
	.byte	117
	.byte	6
	.byte	11
	.byte	12
	.byte	10
	.byte	3
	.byte	-121
	.byte	4
	.byte	110
	.byte	12
	.byte	-8
	.byte	9
	.byte	-53
	.byte	5
	.byte	-89
	.byte	10
	.byte	95
	.byte	4
	.byte	-53
	.byte	6
	.byte	-124
	.byte	2
	.byte	-103
	.byte	9
	.byte	93
	.byte	1
	.byte	-94
	.byte	1
	.byte	73
	.byte	1
	.byte	101
	.byte	12
	.byte	-74
	.byte	12
	.byte	49
	.byte	3
	.byte	73
	.byte	4
	.byte	91
	.byte	2
	.byte	98
	.byte	2
	.byte	42
	.byte	5
	.byte	-4
	.byte	7
	.byte	72
	.byte	7
	.byte	-128
	.byte	1
	.byte	66
	.byte	8
	.byte	121
	.byte	12
	.byte	-62
	.byte	4
	.byte	-54
	.byte	7
	.byte	-105
	.byte	9
	.byte	-36
	.byte	0
	.byte	94
	.byte	8
	.byte	-122
	.byte	6
	.byte	96
	.byte	8
	.byte	7
	.byte	7
	.byte	3
	.byte	8
	.byte	26
	.byte	3
	.byte	27
	.byte	7
	.byte	-85
	.byte	9
	.byte	-101
	.byte	9
	.byte	-34
	.byte	1
	.byte	-107
	.byte	12
	.byte	-51
	.byte	11
	.byte	-28
	.byte	3
	.byte	-33
	.byte	3
	.byte	-66
	.byte	3
	.byte	77
	.byte	7
	.byte	-14
	.byte	5
	.byte	92
	.byte	6
