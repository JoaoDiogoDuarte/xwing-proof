	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_xwing_amd64_ref_dec
	.globl	jade_kem_xwing_amd64_ref_dec
	.globl	_jade_kem_xwing_amd64_ref_enc
	.globl	jade_kem_xwing_amd64_ref_enc
	.globl	_jade_kem_xwing_amd64_ref_enc_derand
	.globl	jade_kem_xwing_amd64_ref_enc_derand
	.globl	_jade_kem_xwing_amd64_ref_keypair
	.globl	jade_kem_xwing_amd64_ref_keypair
	.globl	_jade_kem_xwing_amd64_ref_keypair_derand
	.globl	jade_kem_xwing_amd64_ref_keypair_derand
	.globl	_jade_scalarmult_curve25519_amd64_ref4_base
	.globl	jade_scalarmult_curve25519_amd64_ref4_base
	.globl	_jade_scalarmult_curve25519_amd64_ref4
	.globl	jade_scalarmult_curve25519_amd64_ref4
_jade_kem_xwing_amd64_ref_dec:
jade_kem_xwing_amd64_ref_dec:
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
	movq	%rsi, %rcx
	leaq	-14536(%rsp), %rsp
	call	L_crypto_xkem_dec_jazz$1
Ljade_kem_xwing_amd64_ref_dec$1:
	leaq	14536(%rsp), %rsp
	xorq	%rax, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_ref_enc:
jade_kem_xwing_amd64_ref_enc:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	%rax, 112(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movq	%rdx, %rbp
	movq	%rsp, %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rsp, %rax
	leaq	-13440(%rsp), %rsp
	call	L_crypto_xkem_enc_derand_jazz$1
Ljade_kem_xwing_amd64_ref_enc$1:
	leaq	13440(%rsp), %rsp
	xorq	%rax, %rax
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %r13
	movq	96(%rsp), %r14
	movq	104(%rsp), %r15
	movq	112(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_ref_enc_derand:
jade_kem_xwing_amd64_ref_enc_derand:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	%rax, 112(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movq	%rdx, %rbp
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
	leaq	-13440(%rsp), %rsp
	call	L_crypto_xkem_enc_derand_jazz$1
Ljade_kem_xwing_amd64_ref_enc_derand$1:
	leaq	13440(%rsp), %rsp
	xorq	%rax, %rax
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %r13
	movq	96(%rsp), %r14
	movq	104(%rsp), %r15
	movq	112(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_ref_keypair:
jade_kem_xwing_amd64_ref_keypair:
	movq	%rsp, %rax
	leaq	-152(%rsp), %rsp
	andq	$-16, %rsp
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
	leaq	-10344(%rsp), %rsp
	call	L_crypto_xkem_keypair_derand_jazz$1
Ljade_kem_xwing_amd64_ref_keypair$1:
	leaq	10344(%rsp), %rsp
	xorq	%rax, %rax
	movq	96(%rsp), %rbx
	movq	104(%rsp), %rbp
	movq	112(%rsp), %r12
	movq	120(%rsp), %r13
	movq	128(%rsp), %r14
	movq	136(%rsp), %r15
	movq	144(%rsp), %rsp
	ret
_jade_kem_xwing_amd64_ref_keypair_derand:
jade_kem_xwing_amd64_ref_keypair_derand:
	movq	%rsp, %rax
	leaq	-152(%rsp), %rsp
	andq	$-8, %rsp
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
	leaq	-10344(%rsp), %rsp
	call	L_crypto_xkem_keypair_derand_jazz$1
Ljade_kem_xwing_amd64_ref_keypair_derand$1:
	leaq	10344(%rsp), %rsp
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
	movq	%rdi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	120(%rsp), %rax
	movq	$0, %rsi
	movq	$0, %rdi
	jmp 	L_crypto_xkem_dec_jazz$227
L_crypto_xkem_dec_jazz$228:
	movzbl	(%rcx,%rdi), %r10d
	incq	%rdi
	movzbl	(%rcx,%rdi), %r11d
	incq	%rdi
	movzbl	(%rcx,%rdi), %r8d
	incq	%rdi
	movzbl	(%rcx,%rdi), %r9d
	incq	%rdi
	movzbl	(%rcx,%rdi), %ebx
	incq	%rdi
	movl	%r11d, %ebp
	shrl	$2, %r11d
	andl	$3, %ebp
	shll	$8, %ebp
	orl 	%ebp, %r10d
	movl	%r8d, %ebp
	shrl	$4, %r8d
	andl	$15, %ebp
	shll	$6, %ebp
	orl 	%ebp, %r11d
	movl	%r9d, %ebp
	shrl	$6, %r9d
	andl	$63, %ebp
	shll	$4, %ebp
	orl 	%ebp, %r8d
	shll	$2, %ebx
	orl 	%ebx, %r9d
	imull	$3329, %r10d, %r10d
	addl	$512, %r10d
	shrl	$10, %r10d
	movw	%r10w, 2496(%rsp,%rsi,2)
	incq	%rsi
	imull	$3329, %r11d, %r10d
	addl	$512, %r10d
	shrl	$10, %r10d
	movw	%r10w, 2496(%rsp,%rsi,2)
	incq	%rsi
	imull	$3329, %r8d, %r8d
	addl	$512, %r8d
	shrl	$10, %r8d
	movw	%r8w, 2496(%rsp,%rsi,2)
	incq	%rsi
	imull	$3329, %r9d, %r8d
	addl	$512, %r8d
	shrl	$10, %r8d
	movw	%r8w, 2496(%rsp,%rsi,2)
	incq	%rsi
L_crypto_xkem_dec_jazz$227:
	cmpq	$765, %rsi
	jb  	L_crypto_xkem_dec_jazz$228
	addq	$960, %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_decompress$1
L_crypto_xkem_dec_jazz$226:
	movq	%rdx, %rsi
	leaq	4032(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$225:
	addq	$384, %rsi
	leaq	4544(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$224:
	addq	$384, %rsi
	leaq	5056(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$223:
	leaq	2496(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$222:
	leaq	3008(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$221:
	leaq	3520(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$220:
	leaq	960(%rsp), %rdi
	leaq	4032(%rsp), %rcx
	leaq	2496(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$219:
	leaq	16(%rsp), %rsp
	leaq	1472(%rsp), %rdi
	leaq	4544(%rsp), %rcx
	leaq	3008(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$218:
	leaq	16(%rsp), %rsp
	leaq	960(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$217:
	leaq	1472(%rsp), %rdi
	leaq	5056(%rsp), %rcx
	leaq	3520(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$216:
	leaq	16(%rsp), %rsp
	leaq	960(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$215:
	leaq	960(%rsp), %rcx
	movq	$0, %rsi
	jmp 	L_crypto_xkem_dec_jazz$213
L_crypto_xkem_dec_jazz$214:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	incq	%rsi
L_crypto_xkem_dec_jazz$213:
	cmpq	$256, %rsi
	jb  	L_crypto_xkem_dec_jazz$214
	leaq	960(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$212:
	leaq	1472(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	960(%rsp), %rdi
	call	L_poly_sub$1
L_crypto_xkem_dec_jazz$211:
	leaq	1472(%rsp), %rcx
	movq	$0, %rsi
	jmp 	L_crypto_xkem_dec_jazz$209
L_crypto_xkem_dec_jazz$210:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	incq	%rsi
L_crypto_xkem_dec_jazz$209:
	cmpq	$256, %rsi
	jb  	L_crypto_xkem_dec_jazz$210
	leaq	1472(%rsp), %rcx
	call	L_i_poly_tomsg$1
L_crypto_xkem_dec_jazz$208:
	movq	%rdx, %rax
	addq	$2336, %rax
	movq	(%rax), %rcx
	movq	%rcx, 152(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 160(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 168(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 176(%rsp)
	movq	%rdx, 48(%rsp)
	leaq	184(%rsp), %rax
	leaq	120(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
L_crypto_xkem_dec_jazz$207:
	leaq	208(%rsp), %rsp
	movq	48(%rsp), %rcx
	addq	$1152, %rcx
	leaq	13450(%rsp), %rdx
	leaq	120(%rsp), %rax
	leaq	216(%rsp), %rsi
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, %rsi
	leaq	2496(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$206:
	addq	$384, %rsi
	leaq	3008(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$205:
	addq	$384, %rsi
	leaq	3520(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_dec_jazz$204:
	movq	$0, %rdx
	addq	$1152, %rcx
	jmp 	L_crypto_xkem_dec_jazz$202
L_crypto_xkem_dec_jazz$203:
	movq	(%rcx), %rsi
	movq	%rsi, 88(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
L_crypto_xkem_dec_jazz$202:
	cmpq	$4, %rdx
	jb  	L_crypto_xkem_dec_jazz$203
	leaq	1472(%rsp), %rcx
	call	L_i_poly_frommsg$1
L_crypto_xkem_dec_jazz$201:
	movq	$1, %rax
	movq	%rax, 72(%rsp)
	movb	88(%rsp), %al
	movb	%al, 13248(%rsp)
	movb	89(%rsp), %al
	movb	%al, 13249(%rsp)
	movb	90(%rsp), %al
	movb	%al, 13250(%rsp)
	movb	91(%rsp), %al
	movb	%al, 13251(%rsp)
	movb	92(%rsp), %al
	movb	%al, 13252(%rsp)
	movb	93(%rsp), %al
	movb	%al, 13253(%rsp)
	movb	94(%rsp), %al
	movb	%al, 13254(%rsp)
	movb	95(%rsp), %al
	movb	%al, 13255(%rsp)
	movb	96(%rsp), %al
	movb	%al, 13256(%rsp)
	movb	97(%rsp), %al
	movb	%al, 13257(%rsp)
	movb	98(%rsp), %al
	movb	%al, 13258(%rsp)
	movb	99(%rsp), %al
	movb	%al, 13259(%rsp)
	movb	100(%rsp), %al
	movb	%al, 13260(%rsp)
	movb	101(%rsp), %al
	movb	%al, 13261(%rsp)
	movb	102(%rsp), %al
	movb	%al, 13262(%rsp)
	movb	103(%rsp), %al
	movb	%al, 13263(%rsp)
	movb	104(%rsp), %al
	movb	%al, 13264(%rsp)
	movb	105(%rsp), %al
	movb	%al, 13265(%rsp)
	movb	106(%rsp), %al
	movb	%al, 13266(%rsp)
	movb	107(%rsp), %al
	movb	%al, 13267(%rsp)
	movb	108(%rsp), %al
	movb	%al, 13268(%rsp)
	movb	109(%rsp), %al
	movb	%al, 13269(%rsp)
	movb	110(%rsp), %al
	movb	%al, 13270(%rsp)
	movb	111(%rsp), %al
	movb	%al, 13271(%rsp)
	movb	112(%rsp), %al
	movb	%al, 13272(%rsp)
	movb	113(%rsp), %al
	movb	%al, 13273(%rsp)
	movb	114(%rsp), %al
	movb	%al, 13274(%rsp)
	movb	115(%rsp), %al
	movb	%al, 13275(%rsp)
	movb	116(%rsp), %al
	movb	%al, 13276(%rsp)
	movb	117(%rsp), %al
	movb	%al, 13277(%rsp)
	movb	118(%rsp), %al
	movb	%al, 13278(%rsp)
	movb	119(%rsp), %al
	movb	%al, 13279(%rsp)
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$199
	movb	$0, 13280(%rsp)
	movb	$0, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$200
L_crypto_xkem_dec_jazz$199:
	movb	$0, 13280(%rsp)
	movb	$0, 13281(%rsp)
L_crypto_xkem_dec_jazz$200:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$198:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$188
L_crypto_xkem_dec_jazz$189:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$197:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$190
L_crypto_xkem_dec_jazz$191:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$192
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$190
L_crypto_xkem_dec_jazz$192:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$196
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$196:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$190
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$190
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$195:
L_crypto_xkem_dec_jazz$194:
L_crypto_xkem_dec_jazz$193:
L_crypto_xkem_dec_jazz$190:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$191
L_crypto_xkem_dec_jazz$188:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$189
	movq	$0, %rax
	leaq	8640(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$186
L_crypto_xkem_dec_jazz$187:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$186:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$187
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$184
	movb	$0, 13280(%rsp)
	movb	$1, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$185
L_crypto_xkem_dec_jazz$184:
	movb	$1, 13280(%rsp)
	movb	$0, 13281(%rsp)
L_crypto_xkem_dec_jazz$185:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$183:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$173
L_crypto_xkem_dec_jazz$174:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$182:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$175
L_crypto_xkem_dec_jazz$176:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$177
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$175
L_crypto_xkem_dec_jazz$177:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$181
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$181:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$175
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$175
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$180:
L_crypto_xkem_dec_jazz$179:
L_crypto_xkem_dec_jazz$178:
L_crypto_xkem_dec_jazz$175:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$176
L_crypto_xkem_dec_jazz$173:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$174
	movq	$0, %rax
	leaq	9152(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$171
L_crypto_xkem_dec_jazz$172:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$171:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$172
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$169
	movb	$0, 13280(%rsp)
	movb	$2, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$170
L_crypto_xkem_dec_jazz$169:
	movb	$2, 13280(%rsp)
	movb	$0, 13281(%rsp)
L_crypto_xkem_dec_jazz$170:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$168:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$158
L_crypto_xkem_dec_jazz$159:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$167:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$160
L_crypto_xkem_dec_jazz$161:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$162
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$160
L_crypto_xkem_dec_jazz$162:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$166
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$166:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$160
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$160
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$165:
L_crypto_xkem_dec_jazz$164:
L_crypto_xkem_dec_jazz$163:
L_crypto_xkem_dec_jazz$160:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$161
L_crypto_xkem_dec_jazz$158:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$159
	movq	$0, %rax
	leaq	9664(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$156
L_crypto_xkem_dec_jazz$157:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$156:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$157
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$154
	movb	$1, 13280(%rsp)
	movb	$0, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$155
L_crypto_xkem_dec_jazz$154:
	movb	$0, 13280(%rsp)
	movb	$1, 13281(%rsp)
L_crypto_xkem_dec_jazz$155:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$153:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$143
L_crypto_xkem_dec_jazz$144:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$152:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$145
L_crypto_xkem_dec_jazz$146:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$147
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$145
L_crypto_xkem_dec_jazz$147:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$151
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$151:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$145
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$145
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$150:
L_crypto_xkem_dec_jazz$149:
L_crypto_xkem_dec_jazz$148:
L_crypto_xkem_dec_jazz$145:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$146
L_crypto_xkem_dec_jazz$143:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$144
	movq	$0, %rax
	leaq	10176(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$141
L_crypto_xkem_dec_jazz$142:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$141:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$142
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$139
	movb	$1, 13280(%rsp)
	movb	$1, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$140
L_crypto_xkem_dec_jazz$139:
	movb	$1, 13280(%rsp)
	movb	$1, 13281(%rsp)
L_crypto_xkem_dec_jazz$140:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$138:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$128
L_crypto_xkem_dec_jazz$129:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$137:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$130
L_crypto_xkem_dec_jazz$131:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$132
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$130
L_crypto_xkem_dec_jazz$132:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$136
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$136:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$130
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$130
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$135:
L_crypto_xkem_dec_jazz$134:
L_crypto_xkem_dec_jazz$133:
L_crypto_xkem_dec_jazz$130:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$131
L_crypto_xkem_dec_jazz$128:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$129
	movq	$0, %rax
	leaq	10688(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$126
L_crypto_xkem_dec_jazz$127:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$126:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$127
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$124
	movb	$1, 13280(%rsp)
	movb	$2, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$125
L_crypto_xkem_dec_jazz$124:
	movb	$2, 13280(%rsp)
	movb	$1, 13281(%rsp)
L_crypto_xkem_dec_jazz$125:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$123:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$113
L_crypto_xkem_dec_jazz$114:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$122:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$115
L_crypto_xkem_dec_jazz$116:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$117
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$115
L_crypto_xkem_dec_jazz$117:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$121
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$121:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$115
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$115
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$120:
L_crypto_xkem_dec_jazz$119:
L_crypto_xkem_dec_jazz$118:
L_crypto_xkem_dec_jazz$115:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$116
L_crypto_xkem_dec_jazz$113:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$114
	movq	$0, %rax
	leaq	11200(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$111
L_crypto_xkem_dec_jazz$112:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$111:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$112
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$109
	movb	$2, 13280(%rsp)
	movb	$0, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$110
L_crypto_xkem_dec_jazz$109:
	movb	$0, 13280(%rsp)
	movb	$2, 13281(%rsp)
L_crypto_xkem_dec_jazz$110:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$108:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$98
L_crypto_xkem_dec_jazz$99:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$107:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$100
L_crypto_xkem_dec_jazz$101:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$102
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$100
L_crypto_xkem_dec_jazz$102:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$106
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$106:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$100
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$100
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$105:
L_crypto_xkem_dec_jazz$104:
L_crypto_xkem_dec_jazz$103:
L_crypto_xkem_dec_jazz$100:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$101
L_crypto_xkem_dec_jazz$98:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$99
	movq	$0, %rax
	leaq	11712(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$96
L_crypto_xkem_dec_jazz$97:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$96:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$97
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$94
	movb	$2, 13280(%rsp)
	movb	$1, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$95
L_crypto_xkem_dec_jazz$94:
	movb	$1, 13280(%rsp)
	movb	$2, 13281(%rsp)
L_crypto_xkem_dec_jazz$95:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$93:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$83
L_crypto_xkem_dec_jazz$84:
	movq	%rax, 80(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$92:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$85
L_crypto_xkem_dec_jazz$86:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$87
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$85
L_crypto_xkem_dec_jazz$87:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$91
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$91:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$85
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$85
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$90:
L_crypto_xkem_dec_jazz$89:
L_crypto_xkem_dec_jazz$88:
L_crypto_xkem_dec_jazz$85:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$86
L_crypto_xkem_dec_jazz$83:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$84
	movq	$0, %rax
	leaq	12224(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$81
L_crypto_xkem_dec_jazz$82:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$81:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$82
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_dec_jazz$79
	movb	$2, 13280(%rsp)
	movb	$2, 13281(%rsp)
	jmp 	L_crypto_xkem_dec_jazz$80
L_crypto_xkem_dec_jazz$79:
	movb	$2, 13280(%rsp)
	movb	$2, 13281(%rsp)
L_crypto_xkem_dec_jazz$80:
	leaq	248(%rsp), %rax
	leaq	13248(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_dec_jazz$78:
	movq	$0, %rax
	jmp 	L_crypto_xkem_dec_jazz$68
L_crypto_xkem_dec_jazz$69:
	movq	%rax, 72(%rsp)
	leaq	248(%rsp), %rax
	leaq	13282(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_dec_jazz$77:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$70
L_crypto_xkem_dec_jazz$71:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$72
	movq	$168, %rcx
	jmp 	L_crypto_xkem_dec_jazz$70
L_crypto_xkem_dec_jazz$72:
	movzbw	13282(%rsp,%rcx), %dx
	movzbw	13283(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13284(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_dec_jazz$76
	movw	%dx, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$76:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_dec_jazz$70
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_dec_jazz$70
	movw	%di, 960(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$75:
L_crypto_xkem_dec_jazz$74:
L_crypto_xkem_dec_jazz$73:
L_crypto_xkem_dec_jazz$70:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_dec_jazz$71
L_crypto_xkem_dec_jazz$68:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$69
	movq	$0, %rax
	leaq	12736(%rsp), %rcx
	jmp 	L_crypto_xkem_dec_jazz$66
L_crypto_xkem_dec_jazz$67:
	movw	960(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_dec_jazz$66:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_dec_jazz$67
	movb	$0, %al
	leaq	4032(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$65:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	4544(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$64:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	5056(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$63:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	5568(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$62:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	6080(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$61:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	6592(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$60:
	leaq	176(%rsp), %rsp
	movb	$6, %al
	leaq	960(%rsp), %rdx
	movq	56(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_dec_jazz$59:
	leaq	176(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$58:
	leaq	4544(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$57:
	leaq	5056(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_dec_jazz$56:
	leaq	7104(%rsp), %rdi
	leaq	8640(%rsp), %rcx
	leaq	4032(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$55:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	9152(%rsp), %rcx
	leaq	4544(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$54:
	leaq	16(%rsp), %rsp
	leaq	7104(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$53:
	leaq	448(%rsp), %rdi
	leaq	9664(%rsp), %rcx
	leaq	5056(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$52:
	leaq	16(%rsp), %rsp
	leaq	7104(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$51:
	leaq	7104(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$49
L_crypto_xkem_dec_jazz$50:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$49:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$50
	leaq	7616(%rsp), %rdi
	leaq	10176(%rsp), %rcx
	leaq	4032(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$48:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	10688(%rsp), %rcx
	leaq	4544(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$47:
	leaq	16(%rsp), %rsp
	leaq	7616(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$46:
	leaq	448(%rsp), %rdi
	leaq	11200(%rsp), %rcx
	leaq	5056(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$45:
	leaq	16(%rsp), %rsp
	leaq	7616(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$44:
	leaq	7616(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$42
L_crypto_xkem_dec_jazz$43:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$42:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$43
	leaq	8128(%rsp), %rdi
	leaq	11712(%rsp), %rcx
	leaq	4032(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$41:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	12224(%rsp), %rcx
	leaq	4544(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$40:
	leaq	16(%rsp), %rsp
	leaq	8128(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$39:
	leaq	448(%rsp), %rdi
	leaq	12736(%rsp), %rcx
	leaq	5056(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$38:
	leaq	16(%rsp), %rsp
	leaq	8128(%rsp), %rcx
	leaq	448(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$37:
	leaq	8128(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$35
L_crypto_xkem_dec_jazz$36:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$35:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$36
	leaq	448(%rsp), %rdi
	leaq	2496(%rsp), %rcx
	leaq	4032(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$34:
	leaq	16(%rsp), %rsp
	leaq	1984(%rsp), %rdi
	leaq	3008(%rsp), %rcx
	leaq	4544(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$33:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rcx
	leaq	1984(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$32:
	leaq	1984(%rsp), %rdi
	leaq	3520(%rsp), %rcx
	leaq	5056(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_dec_jazz$31:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rcx
	leaq	1984(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$30:
	leaq	448(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$28
L_crypto_xkem_dec_jazz$29:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$28:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$29
	leaq	7104(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$27:
	leaq	7616(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$26:
	leaq	8128(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$25:
	leaq	448(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_dec_jazz$24:
	leaq	7104(%rsp), %rcx
	leaq	5568(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$23:
	leaq	7616(%rsp), %rcx
	leaq	6080(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$22:
	leaq	8128(%rsp), %rcx
	leaq	6592(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$21:
	leaq	448(%rsp), %rcx
	leaq	960(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$20:
	leaq	448(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_dec_jazz$19:
	leaq	7104(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$17
L_crypto_xkem_dec_jazz$18:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$17:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$18
	leaq	7616(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$15
L_crypto_xkem_dec_jazz$16:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$15:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$16
	leaq	8128(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$13
L_crypto_xkem_dec_jazz$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$13:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$14
	leaq	448(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_dec_jazz$11
L_crypto_xkem_dec_jazz$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_dec_jazz$11:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_dec_jazz$12
	movq	64(%rsp), %rax
	movq	%rax, %rdx
	movq	$0, %rsi
	movq	$0, %rdi
	leaq	7104(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$10:
	leaq	7616(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$9:
	leaq	8128(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_dec_jazz$8:
	jmp 	L_crypto_xkem_dec_jazz$6
L_crypto_xkem_dec_jazz$7:
	movzwq	7104(%rsp,%rsi,2), %rcx
	incq	%rsi
	shlq	$10, %rcx
	addq	$1665, %rcx
	imulq	$1290167, %rcx, %rcx
	shrq	$32, %rcx
	andq	$1023, %rcx
	movzwq	7104(%rsp,%rsi,2), %r8
	incq	%rsi
	shlq	$10, %r8
	addq	$1665, %r8
	imulq	$1290167, %r8, %r8
	shrq	$32, %r8
	andq	$1023, %r8
	movzwq	7104(%rsp,%rsi,2), %r9
	incq	%rsi
	shlq	$10, %r9
	addq	$1665, %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movzwq	7104(%rsp,%rsi,2), %r10
	incq	%rsi
	shlq	$10, %r10
	addq	$1665, %r10
	imulq	$1290167, %r10, %r10
	shrq	$32, %r10
	andq	$1023, %r10
	movw	%cx, %r11w
	andw	$255, %r11w
	movb	%r11b, (%rdx,%rdi)
	incq	%rdi
	shrw	$8, %cx
	movw	%r8w, %r11w
	shlw	$2, %r11w
	orw 	%cx, %r11w
	movb	%r11b, (%rdx,%rdi)
	incq	%rdi
	shrw	$6, %r8w
	movw	%r9w, %cx
	shlw	$4, %cx
	orw 	%r8w, %cx
	movb	%cl, (%rdx,%rdi)
	incq	%rdi
	shrw	$4, %r9w
	movw	%r10w, %cx
	shlw	$6, %cx
	orw 	%r9w, %cx
	movb	%cl, (%rdx,%rdi)
	incq	%rdi
	shrq	$2, %r10
	movb	%r10b, (%rdx,%rdi)
	incq	%rdi
L_crypto_xkem_dec_jazz$6:
	cmpq	$765, %rsi
	jb  	L_crypto_xkem_dec_jazz$7
	leaq	960(%rax), %rax
	leaq	448(%rsp), %rcx
	call	L_i_poly_compress$1
L_crypto_xkem_dec_jazz$5:
	movq	40(%rsp), %rax
	leaq	13450(%rsp), %rcx
	movq	$0, %rdx
	movb	(%rcx), %sil
	movb	(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1(%rcx), %sil
	movb	1(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	2(%rcx), %sil
	movb	2(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	3(%rcx), %sil
	movb	3(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	4(%rcx), %sil
	movb	4(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	5(%rcx), %sil
	movb	5(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	6(%rcx), %sil
	movb	6(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	7(%rcx), %sil
	movb	7(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	8(%rcx), %sil
	movb	8(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	9(%rcx), %sil
	movb	9(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	10(%rcx), %sil
	movb	10(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	11(%rcx), %sil
	movb	11(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	12(%rcx), %sil
	movb	12(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	13(%rcx), %sil
	movb	13(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	14(%rcx), %sil
	movb	14(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	15(%rcx), %sil
	movb	15(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	16(%rcx), %sil
	movb	16(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	17(%rcx), %sil
	movb	17(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	18(%rcx), %sil
	movb	18(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	19(%rcx), %sil
	movb	19(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	20(%rcx), %sil
	movb	20(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	21(%rcx), %sil
	movb	21(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	22(%rcx), %sil
	movb	22(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	23(%rcx), %sil
	movb	23(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	24(%rcx), %sil
	movb	24(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	25(%rcx), %sil
	movb	25(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	26(%rcx), %sil
	movb	26(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	27(%rcx), %sil
	movb	27(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	28(%rcx), %sil
	movb	28(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	29(%rcx), %sil
	movb	29(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	30(%rcx), %sil
	movb	30(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	31(%rcx), %sil
	movb	31(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	32(%rcx), %sil
	movb	32(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	33(%rcx), %sil
	movb	33(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	34(%rcx), %sil
	movb	34(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	35(%rcx), %sil
	movb	35(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	36(%rcx), %sil
	movb	36(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	37(%rcx), %sil
	movb	37(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	38(%rcx), %sil
	movb	38(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	39(%rcx), %sil
	movb	39(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	40(%rcx), %sil
	movb	40(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	41(%rcx), %sil
	movb	41(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	42(%rcx), %sil
	movb	42(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	43(%rcx), %sil
	movb	43(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	44(%rcx), %sil
	movb	44(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	45(%rcx), %sil
	movb	45(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	46(%rcx), %sil
	movb	46(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	47(%rcx), %sil
	movb	47(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	48(%rcx), %sil
	movb	48(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	49(%rcx), %sil
	movb	49(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	50(%rcx), %sil
	movb	50(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	51(%rcx), %sil
	movb	51(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	52(%rcx), %sil
	movb	52(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	53(%rcx), %sil
	movb	53(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	54(%rcx), %sil
	movb	54(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	55(%rcx), %sil
	movb	55(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	56(%rcx), %sil
	movb	56(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	57(%rcx), %sil
	movb	57(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	58(%rcx), %sil
	movb	58(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	59(%rcx), %sil
	movb	59(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	60(%rcx), %sil
	movb	60(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	61(%rcx), %sil
	movb	61(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	62(%rcx), %sil
	movb	62(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	63(%rcx), %sil
	movb	63(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	64(%rcx), %sil
	movb	64(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	65(%rcx), %sil
	movb	65(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	66(%rcx), %sil
	movb	66(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	67(%rcx), %sil
	movb	67(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	68(%rcx), %sil
	movb	68(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	69(%rcx), %sil
	movb	69(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	70(%rcx), %sil
	movb	70(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	71(%rcx), %sil
	movb	71(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	72(%rcx), %sil
	movb	72(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	73(%rcx), %sil
	movb	73(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	74(%rcx), %sil
	movb	74(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	75(%rcx), %sil
	movb	75(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	76(%rcx), %sil
	movb	76(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	77(%rcx), %sil
	movb	77(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	78(%rcx), %sil
	movb	78(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	79(%rcx), %sil
	movb	79(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	80(%rcx), %sil
	movb	80(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	81(%rcx), %sil
	movb	81(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	82(%rcx), %sil
	movb	82(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	83(%rcx), %sil
	movb	83(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	84(%rcx), %sil
	movb	84(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	85(%rcx), %sil
	movb	85(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	86(%rcx), %sil
	movb	86(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	87(%rcx), %sil
	movb	87(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	88(%rcx), %sil
	movb	88(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	89(%rcx), %sil
	movb	89(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	90(%rcx), %sil
	movb	90(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	91(%rcx), %sil
	movb	91(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	92(%rcx), %sil
	movb	92(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	93(%rcx), %sil
	movb	93(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	94(%rcx), %sil
	movb	94(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	95(%rcx), %sil
	movb	95(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	96(%rcx), %sil
	movb	96(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	97(%rcx), %sil
	movb	97(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	98(%rcx), %sil
	movb	98(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	99(%rcx), %sil
	movb	99(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	100(%rcx), %sil
	movb	100(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	101(%rcx), %sil
	movb	101(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	102(%rcx), %sil
	movb	102(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	103(%rcx), %sil
	movb	103(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	104(%rcx), %sil
	movb	104(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	105(%rcx), %sil
	movb	105(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	106(%rcx), %sil
	movb	106(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	107(%rcx), %sil
	movb	107(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	108(%rcx), %sil
	movb	108(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	109(%rcx), %sil
	movb	109(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	110(%rcx), %sil
	movb	110(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	111(%rcx), %sil
	movb	111(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	112(%rcx), %sil
	movb	112(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	113(%rcx), %sil
	movb	113(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	114(%rcx), %sil
	movb	114(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	115(%rcx), %sil
	movb	115(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	116(%rcx), %sil
	movb	116(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	117(%rcx), %sil
	movb	117(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	118(%rcx), %sil
	movb	118(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	119(%rcx), %sil
	movb	119(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	120(%rcx), %sil
	movb	120(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	121(%rcx), %sil
	movb	121(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	122(%rcx), %sil
	movb	122(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	123(%rcx), %sil
	movb	123(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	124(%rcx), %sil
	movb	124(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	125(%rcx), %sil
	movb	125(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	126(%rcx), %sil
	movb	126(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	127(%rcx), %sil
	movb	127(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	128(%rcx), %sil
	movb	128(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	129(%rcx), %sil
	movb	129(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	130(%rcx), %sil
	movb	130(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	131(%rcx), %sil
	movb	131(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	132(%rcx), %sil
	movb	132(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	133(%rcx), %sil
	movb	133(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	134(%rcx), %sil
	movb	134(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	135(%rcx), %sil
	movb	135(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	136(%rcx), %sil
	movb	136(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	137(%rcx), %sil
	movb	137(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	138(%rcx), %sil
	movb	138(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	139(%rcx), %sil
	movb	139(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	140(%rcx), %sil
	movb	140(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	141(%rcx), %sil
	movb	141(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	142(%rcx), %sil
	movb	142(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	143(%rcx), %sil
	movb	143(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	144(%rcx), %sil
	movb	144(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	145(%rcx), %sil
	movb	145(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	146(%rcx), %sil
	movb	146(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	147(%rcx), %sil
	movb	147(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	148(%rcx), %sil
	movb	148(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	149(%rcx), %sil
	movb	149(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	150(%rcx), %sil
	movb	150(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	151(%rcx), %sil
	movb	151(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	152(%rcx), %sil
	movb	152(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	153(%rcx), %sil
	movb	153(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	154(%rcx), %sil
	movb	154(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	155(%rcx), %sil
	movb	155(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	156(%rcx), %sil
	movb	156(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	157(%rcx), %sil
	movb	157(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	158(%rcx), %sil
	movb	158(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	159(%rcx), %sil
	movb	159(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	160(%rcx), %sil
	movb	160(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	161(%rcx), %sil
	movb	161(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	162(%rcx), %sil
	movb	162(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	163(%rcx), %sil
	movb	163(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	164(%rcx), %sil
	movb	164(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	165(%rcx), %sil
	movb	165(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	166(%rcx), %sil
	movb	166(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	167(%rcx), %sil
	movb	167(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	168(%rcx), %sil
	movb	168(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	169(%rcx), %sil
	movb	169(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	170(%rcx), %sil
	movb	170(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	171(%rcx), %sil
	movb	171(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	172(%rcx), %sil
	movb	172(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	173(%rcx), %sil
	movb	173(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	174(%rcx), %sil
	movb	174(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	175(%rcx), %sil
	movb	175(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	176(%rcx), %sil
	movb	176(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	177(%rcx), %sil
	movb	177(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	178(%rcx), %sil
	movb	178(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	179(%rcx), %sil
	movb	179(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	180(%rcx), %sil
	movb	180(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	181(%rcx), %sil
	movb	181(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	182(%rcx), %sil
	movb	182(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	183(%rcx), %sil
	movb	183(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	184(%rcx), %sil
	movb	184(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	185(%rcx), %sil
	movb	185(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	186(%rcx), %sil
	movb	186(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	187(%rcx), %sil
	movb	187(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	188(%rcx), %sil
	movb	188(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	189(%rcx), %sil
	movb	189(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	190(%rcx), %sil
	movb	190(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	191(%rcx), %sil
	movb	191(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	192(%rcx), %sil
	movb	192(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	193(%rcx), %sil
	movb	193(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	194(%rcx), %sil
	movb	194(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	195(%rcx), %sil
	movb	195(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	196(%rcx), %sil
	movb	196(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	197(%rcx), %sil
	movb	197(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	198(%rcx), %sil
	movb	198(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	199(%rcx), %sil
	movb	199(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	200(%rcx), %sil
	movb	200(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	201(%rcx), %sil
	movb	201(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	202(%rcx), %sil
	movb	202(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	203(%rcx), %sil
	movb	203(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	204(%rcx), %sil
	movb	204(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	205(%rcx), %sil
	movb	205(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	206(%rcx), %sil
	movb	206(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	207(%rcx), %sil
	movb	207(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	208(%rcx), %sil
	movb	208(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	209(%rcx), %sil
	movb	209(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	210(%rcx), %sil
	movb	210(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	211(%rcx), %sil
	movb	211(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	212(%rcx), %sil
	movb	212(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	213(%rcx), %sil
	movb	213(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	214(%rcx), %sil
	movb	214(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	215(%rcx), %sil
	movb	215(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	216(%rcx), %sil
	movb	216(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	217(%rcx), %sil
	movb	217(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	218(%rcx), %sil
	movb	218(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	219(%rcx), %sil
	movb	219(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	220(%rcx), %sil
	movb	220(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	221(%rcx), %sil
	movb	221(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	222(%rcx), %sil
	movb	222(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	223(%rcx), %sil
	movb	223(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	224(%rcx), %sil
	movb	224(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	225(%rcx), %sil
	movb	225(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	226(%rcx), %sil
	movb	226(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	227(%rcx), %sil
	movb	227(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	228(%rcx), %sil
	movb	228(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	229(%rcx), %sil
	movb	229(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	230(%rcx), %sil
	movb	230(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	231(%rcx), %sil
	movb	231(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	232(%rcx), %sil
	movb	232(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	233(%rcx), %sil
	movb	233(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	234(%rcx), %sil
	movb	234(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	235(%rcx), %sil
	movb	235(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	236(%rcx), %sil
	movb	236(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	237(%rcx), %sil
	movb	237(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	238(%rcx), %sil
	movb	238(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	239(%rcx), %sil
	movb	239(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	240(%rcx), %sil
	movb	240(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	241(%rcx), %sil
	movb	241(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	242(%rcx), %sil
	movb	242(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	243(%rcx), %sil
	movb	243(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	244(%rcx), %sil
	movb	244(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	245(%rcx), %sil
	movb	245(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	246(%rcx), %sil
	movb	246(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	247(%rcx), %sil
	movb	247(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	248(%rcx), %sil
	movb	248(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	249(%rcx), %sil
	movb	249(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	250(%rcx), %sil
	movb	250(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	251(%rcx), %sil
	movb	251(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	252(%rcx), %sil
	movb	252(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	253(%rcx), %sil
	movb	253(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	254(%rcx), %sil
	movb	254(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	255(%rcx), %sil
	movb	255(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	256(%rcx), %sil
	movb	256(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	257(%rcx), %sil
	movb	257(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	258(%rcx), %sil
	movb	258(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	259(%rcx), %sil
	movb	259(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	260(%rcx), %sil
	movb	260(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	261(%rcx), %sil
	movb	261(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	262(%rcx), %sil
	movb	262(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	263(%rcx), %sil
	movb	263(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	264(%rcx), %sil
	movb	264(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	265(%rcx), %sil
	movb	265(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	266(%rcx), %sil
	movb	266(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	267(%rcx), %sil
	movb	267(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	268(%rcx), %sil
	movb	268(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	269(%rcx), %sil
	movb	269(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	270(%rcx), %sil
	movb	270(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	271(%rcx), %sil
	movb	271(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	272(%rcx), %sil
	movb	272(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	273(%rcx), %sil
	movb	273(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	274(%rcx), %sil
	movb	274(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	275(%rcx), %sil
	movb	275(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	276(%rcx), %sil
	movb	276(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	277(%rcx), %sil
	movb	277(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	278(%rcx), %sil
	movb	278(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	279(%rcx), %sil
	movb	279(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	280(%rcx), %sil
	movb	280(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	281(%rcx), %sil
	movb	281(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	282(%rcx), %sil
	movb	282(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	283(%rcx), %sil
	movb	283(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	284(%rcx), %sil
	movb	284(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	285(%rcx), %sil
	movb	285(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	286(%rcx), %sil
	movb	286(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	287(%rcx), %sil
	movb	287(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	288(%rcx), %sil
	movb	288(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	289(%rcx), %sil
	movb	289(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	290(%rcx), %sil
	movb	290(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	291(%rcx), %sil
	movb	291(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	292(%rcx), %sil
	movb	292(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	293(%rcx), %sil
	movb	293(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	294(%rcx), %sil
	movb	294(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	295(%rcx), %sil
	movb	295(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	296(%rcx), %sil
	movb	296(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	297(%rcx), %sil
	movb	297(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	298(%rcx), %sil
	movb	298(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	299(%rcx), %sil
	movb	299(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	300(%rcx), %sil
	movb	300(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	301(%rcx), %sil
	movb	301(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	302(%rcx), %sil
	movb	302(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	303(%rcx), %sil
	movb	303(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	304(%rcx), %sil
	movb	304(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	305(%rcx), %sil
	movb	305(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	306(%rcx), %sil
	movb	306(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	307(%rcx), %sil
	movb	307(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	308(%rcx), %sil
	movb	308(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	309(%rcx), %sil
	movb	309(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	310(%rcx), %sil
	movb	310(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	311(%rcx), %sil
	movb	311(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	312(%rcx), %sil
	movb	312(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	313(%rcx), %sil
	movb	313(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	314(%rcx), %sil
	movb	314(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	315(%rcx), %sil
	movb	315(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	316(%rcx), %sil
	movb	316(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	317(%rcx), %sil
	movb	317(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	318(%rcx), %sil
	movb	318(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	319(%rcx), %sil
	movb	319(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	320(%rcx), %sil
	movb	320(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	321(%rcx), %sil
	movb	321(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	322(%rcx), %sil
	movb	322(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	323(%rcx), %sil
	movb	323(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	324(%rcx), %sil
	movb	324(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	325(%rcx), %sil
	movb	325(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	326(%rcx), %sil
	movb	326(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	327(%rcx), %sil
	movb	327(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	328(%rcx), %sil
	movb	328(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	329(%rcx), %sil
	movb	329(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	330(%rcx), %sil
	movb	330(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	331(%rcx), %sil
	movb	331(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	332(%rcx), %sil
	movb	332(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	333(%rcx), %sil
	movb	333(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	334(%rcx), %sil
	movb	334(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	335(%rcx), %sil
	movb	335(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	336(%rcx), %sil
	movb	336(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	337(%rcx), %sil
	movb	337(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	338(%rcx), %sil
	movb	338(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	339(%rcx), %sil
	movb	339(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	340(%rcx), %sil
	movb	340(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	341(%rcx), %sil
	movb	341(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	342(%rcx), %sil
	movb	342(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	343(%rcx), %sil
	movb	343(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	344(%rcx), %sil
	movb	344(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	345(%rcx), %sil
	movb	345(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	346(%rcx), %sil
	movb	346(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	347(%rcx), %sil
	movb	347(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	348(%rcx), %sil
	movb	348(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	349(%rcx), %sil
	movb	349(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	350(%rcx), %sil
	movb	350(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	351(%rcx), %sil
	movb	351(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	352(%rcx), %sil
	movb	352(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	353(%rcx), %sil
	movb	353(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	354(%rcx), %sil
	movb	354(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	355(%rcx), %sil
	movb	355(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	356(%rcx), %sil
	movb	356(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	357(%rcx), %sil
	movb	357(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	358(%rcx), %sil
	movb	358(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	359(%rcx), %sil
	movb	359(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	360(%rcx), %sil
	movb	360(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	361(%rcx), %sil
	movb	361(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	362(%rcx), %sil
	movb	362(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	363(%rcx), %sil
	movb	363(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	364(%rcx), %sil
	movb	364(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	365(%rcx), %sil
	movb	365(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	366(%rcx), %sil
	movb	366(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	367(%rcx), %sil
	movb	367(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	368(%rcx), %sil
	movb	368(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	369(%rcx), %sil
	movb	369(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	370(%rcx), %sil
	movb	370(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	371(%rcx), %sil
	movb	371(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	372(%rcx), %sil
	movb	372(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	373(%rcx), %sil
	movb	373(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	374(%rcx), %sil
	movb	374(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	375(%rcx), %sil
	movb	375(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	376(%rcx), %sil
	movb	376(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	377(%rcx), %sil
	movb	377(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	378(%rcx), %sil
	movb	378(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	379(%rcx), %sil
	movb	379(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	380(%rcx), %sil
	movb	380(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	381(%rcx), %sil
	movb	381(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	382(%rcx), %sil
	movb	382(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	383(%rcx), %sil
	movb	383(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	384(%rcx), %sil
	movb	384(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	385(%rcx), %sil
	movb	385(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	386(%rcx), %sil
	movb	386(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	387(%rcx), %sil
	movb	387(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	388(%rcx), %sil
	movb	388(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	389(%rcx), %sil
	movb	389(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	390(%rcx), %sil
	movb	390(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	391(%rcx), %sil
	movb	391(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	392(%rcx), %sil
	movb	392(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	393(%rcx), %sil
	movb	393(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	394(%rcx), %sil
	movb	394(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	395(%rcx), %sil
	movb	395(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	396(%rcx), %sil
	movb	396(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	397(%rcx), %sil
	movb	397(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	398(%rcx), %sil
	movb	398(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	399(%rcx), %sil
	movb	399(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	400(%rcx), %sil
	movb	400(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	401(%rcx), %sil
	movb	401(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	402(%rcx), %sil
	movb	402(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	403(%rcx), %sil
	movb	403(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	404(%rcx), %sil
	movb	404(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	405(%rcx), %sil
	movb	405(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	406(%rcx), %sil
	movb	406(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	407(%rcx), %sil
	movb	407(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	408(%rcx), %sil
	movb	408(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	409(%rcx), %sil
	movb	409(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	410(%rcx), %sil
	movb	410(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	411(%rcx), %sil
	movb	411(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	412(%rcx), %sil
	movb	412(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	413(%rcx), %sil
	movb	413(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	414(%rcx), %sil
	movb	414(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	415(%rcx), %sil
	movb	415(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	416(%rcx), %sil
	movb	416(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	417(%rcx), %sil
	movb	417(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	418(%rcx), %sil
	movb	418(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	419(%rcx), %sil
	movb	419(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	420(%rcx), %sil
	movb	420(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	421(%rcx), %sil
	movb	421(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	422(%rcx), %sil
	movb	422(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	423(%rcx), %sil
	movb	423(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	424(%rcx), %sil
	movb	424(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	425(%rcx), %sil
	movb	425(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	426(%rcx), %sil
	movb	426(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	427(%rcx), %sil
	movb	427(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	428(%rcx), %sil
	movb	428(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	429(%rcx), %sil
	movb	429(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	430(%rcx), %sil
	movb	430(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	431(%rcx), %sil
	movb	431(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	432(%rcx), %sil
	movb	432(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	433(%rcx), %sil
	movb	433(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	434(%rcx), %sil
	movb	434(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	435(%rcx), %sil
	movb	435(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	436(%rcx), %sil
	movb	436(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	437(%rcx), %sil
	movb	437(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	438(%rcx), %sil
	movb	438(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	439(%rcx), %sil
	movb	439(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	440(%rcx), %sil
	movb	440(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	441(%rcx), %sil
	movb	441(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	442(%rcx), %sil
	movb	442(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	443(%rcx), %sil
	movb	443(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	444(%rcx), %sil
	movb	444(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	445(%rcx), %sil
	movb	445(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	446(%rcx), %sil
	movb	446(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	447(%rcx), %sil
	movb	447(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	448(%rcx), %sil
	movb	448(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	449(%rcx), %sil
	movb	449(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	450(%rcx), %sil
	movb	450(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	451(%rcx), %sil
	movb	451(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	452(%rcx), %sil
	movb	452(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	453(%rcx), %sil
	movb	453(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	454(%rcx), %sil
	movb	454(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	455(%rcx), %sil
	movb	455(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	456(%rcx), %sil
	movb	456(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	457(%rcx), %sil
	movb	457(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	458(%rcx), %sil
	movb	458(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	459(%rcx), %sil
	movb	459(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	460(%rcx), %sil
	movb	460(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	461(%rcx), %sil
	movb	461(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	462(%rcx), %sil
	movb	462(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	463(%rcx), %sil
	movb	463(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	464(%rcx), %sil
	movb	464(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	465(%rcx), %sil
	movb	465(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	466(%rcx), %sil
	movb	466(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	467(%rcx), %sil
	movb	467(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	468(%rcx), %sil
	movb	468(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	469(%rcx), %sil
	movb	469(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	470(%rcx), %sil
	movb	470(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	471(%rcx), %sil
	movb	471(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	472(%rcx), %sil
	movb	472(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	473(%rcx), %sil
	movb	473(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	474(%rcx), %sil
	movb	474(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	475(%rcx), %sil
	movb	475(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	476(%rcx), %sil
	movb	476(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	477(%rcx), %sil
	movb	477(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	478(%rcx), %sil
	movb	478(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	479(%rcx), %sil
	movb	479(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	480(%rcx), %sil
	movb	480(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	481(%rcx), %sil
	movb	481(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	482(%rcx), %sil
	movb	482(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	483(%rcx), %sil
	movb	483(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	484(%rcx), %sil
	movb	484(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	485(%rcx), %sil
	movb	485(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	486(%rcx), %sil
	movb	486(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	487(%rcx), %sil
	movb	487(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	488(%rcx), %sil
	movb	488(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	489(%rcx), %sil
	movb	489(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	490(%rcx), %sil
	movb	490(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	491(%rcx), %sil
	movb	491(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	492(%rcx), %sil
	movb	492(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	493(%rcx), %sil
	movb	493(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	494(%rcx), %sil
	movb	494(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	495(%rcx), %sil
	movb	495(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	496(%rcx), %sil
	movb	496(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	497(%rcx), %sil
	movb	497(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	498(%rcx), %sil
	movb	498(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	499(%rcx), %sil
	movb	499(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	500(%rcx), %sil
	movb	500(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	501(%rcx), %sil
	movb	501(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	502(%rcx), %sil
	movb	502(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	503(%rcx), %sil
	movb	503(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	504(%rcx), %sil
	movb	504(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	505(%rcx), %sil
	movb	505(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	506(%rcx), %sil
	movb	506(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	507(%rcx), %sil
	movb	507(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	508(%rcx), %sil
	movb	508(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	509(%rcx), %sil
	movb	509(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	510(%rcx), %sil
	movb	510(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	511(%rcx), %sil
	movb	511(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	512(%rcx), %sil
	movb	512(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	513(%rcx), %sil
	movb	513(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	514(%rcx), %sil
	movb	514(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	515(%rcx), %sil
	movb	515(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	516(%rcx), %sil
	movb	516(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	517(%rcx), %sil
	movb	517(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	518(%rcx), %sil
	movb	518(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	519(%rcx), %sil
	movb	519(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	520(%rcx), %sil
	movb	520(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	521(%rcx), %sil
	movb	521(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	522(%rcx), %sil
	movb	522(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	523(%rcx), %sil
	movb	523(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	524(%rcx), %sil
	movb	524(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	525(%rcx), %sil
	movb	525(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	526(%rcx), %sil
	movb	526(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	527(%rcx), %sil
	movb	527(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	528(%rcx), %sil
	movb	528(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	529(%rcx), %sil
	movb	529(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	530(%rcx), %sil
	movb	530(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	531(%rcx), %sil
	movb	531(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	532(%rcx), %sil
	movb	532(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	533(%rcx), %sil
	movb	533(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	534(%rcx), %sil
	movb	534(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	535(%rcx), %sil
	movb	535(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	536(%rcx), %sil
	movb	536(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	537(%rcx), %sil
	movb	537(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	538(%rcx), %sil
	movb	538(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	539(%rcx), %sil
	movb	539(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	540(%rcx), %sil
	movb	540(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	541(%rcx), %sil
	movb	541(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	542(%rcx), %sil
	movb	542(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	543(%rcx), %sil
	movb	543(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	544(%rcx), %sil
	movb	544(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	545(%rcx), %sil
	movb	545(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	546(%rcx), %sil
	movb	546(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	547(%rcx), %sil
	movb	547(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	548(%rcx), %sil
	movb	548(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	549(%rcx), %sil
	movb	549(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	550(%rcx), %sil
	movb	550(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	551(%rcx), %sil
	movb	551(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	552(%rcx), %sil
	movb	552(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	553(%rcx), %sil
	movb	553(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	554(%rcx), %sil
	movb	554(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	555(%rcx), %sil
	movb	555(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	556(%rcx), %sil
	movb	556(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	557(%rcx), %sil
	movb	557(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	558(%rcx), %sil
	movb	558(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	559(%rcx), %sil
	movb	559(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	560(%rcx), %sil
	movb	560(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	561(%rcx), %sil
	movb	561(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	562(%rcx), %sil
	movb	562(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	563(%rcx), %sil
	movb	563(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	564(%rcx), %sil
	movb	564(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	565(%rcx), %sil
	movb	565(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	566(%rcx), %sil
	movb	566(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	567(%rcx), %sil
	movb	567(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	568(%rcx), %sil
	movb	568(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	569(%rcx), %sil
	movb	569(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	570(%rcx), %sil
	movb	570(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	571(%rcx), %sil
	movb	571(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	572(%rcx), %sil
	movb	572(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	573(%rcx), %sil
	movb	573(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	574(%rcx), %sil
	movb	574(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	575(%rcx), %sil
	movb	575(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	576(%rcx), %sil
	movb	576(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	577(%rcx), %sil
	movb	577(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	578(%rcx), %sil
	movb	578(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	579(%rcx), %sil
	movb	579(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	580(%rcx), %sil
	movb	580(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	581(%rcx), %sil
	movb	581(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	582(%rcx), %sil
	movb	582(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	583(%rcx), %sil
	movb	583(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	584(%rcx), %sil
	movb	584(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	585(%rcx), %sil
	movb	585(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	586(%rcx), %sil
	movb	586(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	587(%rcx), %sil
	movb	587(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	588(%rcx), %sil
	movb	588(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	589(%rcx), %sil
	movb	589(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	590(%rcx), %sil
	movb	590(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	591(%rcx), %sil
	movb	591(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	592(%rcx), %sil
	movb	592(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	593(%rcx), %sil
	movb	593(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	594(%rcx), %sil
	movb	594(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	595(%rcx), %sil
	movb	595(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	596(%rcx), %sil
	movb	596(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	597(%rcx), %sil
	movb	597(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	598(%rcx), %sil
	movb	598(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	599(%rcx), %sil
	movb	599(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	600(%rcx), %sil
	movb	600(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	601(%rcx), %sil
	movb	601(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	602(%rcx), %sil
	movb	602(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	603(%rcx), %sil
	movb	603(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	604(%rcx), %sil
	movb	604(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	605(%rcx), %sil
	movb	605(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	606(%rcx), %sil
	movb	606(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	607(%rcx), %sil
	movb	607(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	608(%rcx), %sil
	movb	608(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	609(%rcx), %sil
	movb	609(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	610(%rcx), %sil
	movb	610(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	611(%rcx), %sil
	movb	611(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	612(%rcx), %sil
	movb	612(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	613(%rcx), %sil
	movb	613(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	614(%rcx), %sil
	movb	614(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	615(%rcx), %sil
	movb	615(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	616(%rcx), %sil
	movb	616(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	617(%rcx), %sil
	movb	617(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	618(%rcx), %sil
	movb	618(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	619(%rcx), %sil
	movb	619(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	620(%rcx), %sil
	movb	620(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	621(%rcx), %sil
	movb	621(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	622(%rcx), %sil
	movb	622(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	623(%rcx), %sil
	movb	623(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	624(%rcx), %sil
	movb	624(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	625(%rcx), %sil
	movb	625(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	626(%rcx), %sil
	movb	626(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	627(%rcx), %sil
	movb	627(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	628(%rcx), %sil
	movb	628(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	629(%rcx), %sil
	movb	629(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	630(%rcx), %sil
	movb	630(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	631(%rcx), %sil
	movb	631(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	632(%rcx), %sil
	movb	632(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	633(%rcx), %sil
	movb	633(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	634(%rcx), %sil
	movb	634(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	635(%rcx), %sil
	movb	635(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	636(%rcx), %sil
	movb	636(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	637(%rcx), %sil
	movb	637(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	638(%rcx), %sil
	movb	638(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	639(%rcx), %sil
	movb	639(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	640(%rcx), %sil
	movb	640(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	641(%rcx), %sil
	movb	641(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	642(%rcx), %sil
	movb	642(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	643(%rcx), %sil
	movb	643(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	644(%rcx), %sil
	movb	644(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	645(%rcx), %sil
	movb	645(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	646(%rcx), %sil
	movb	646(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	647(%rcx), %sil
	movb	647(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	648(%rcx), %sil
	movb	648(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	649(%rcx), %sil
	movb	649(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	650(%rcx), %sil
	movb	650(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	651(%rcx), %sil
	movb	651(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	652(%rcx), %sil
	movb	652(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	653(%rcx), %sil
	movb	653(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	654(%rcx), %sil
	movb	654(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	655(%rcx), %sil
	movb	655(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	656(%rcx), %sil
	movb	656(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	657(%rcx), %sil
	movb	657(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	658(%rcx), %sil
	movb	658(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	659(%rcx), %sil
	movb	659(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	660(%rcx), %sil
	movb	660(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	661(%rcx), %sil
	movb	661(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	662(%rcx), %sil
	movb	662(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	663(%rcx), %sil
	movb	663(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	664(%rcx), %sil
	movb	664(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	665(%rcx), %sil
	movb	665(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	666(%rcx), %sil
	movb	666(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	667(%rcx), %sil
	movb	667(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	668(%rcx), %sil
	movb	668(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	669(%rcx), %sil
	movb	669(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	670(%rcx), %sil
	movb	670(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	671(%rcx), %sil
	movb	671(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	672(%rcx), %sil
	movb	672(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	673(%rcx), %sil
	movb	673(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	674(%rcx), %sil
	movb	674(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	675(%rcx), %sil
	movb	675(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	676(%rcx), %sil
	movb	676(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	677(%rcx), %sil
	movb	677(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	678(%rcx), %sil
	movb	678(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	679(%rcx), %sil
	movb	679(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	680(%rcx), %sil
	movb	680(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	681(%rcx), %sil
	movb	681(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	682(%rcx), %sil
	movb	682(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	683(%rcx), %sil
	movb	683(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	684(%rcx), %sil
	movb	684(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	685(%rcx), %sil
	movb	685(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	686(%rcx), %sil
	movb	686(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	687(%rcx), %sil
	movb	687(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	688(%rcx), %sil
	movb	688(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	689(%rcx), %sil
	movb	689(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	690(%rcx), %sil
	movb	690(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	691(%rcx), %sil
	movb	691(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	692(%rcx), %sil
	movb	692(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	693(%rcx), %sil
	movb	693(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	694(%rcx), %sil
	movb	694(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	695(%rcx), %sil
	movb	695(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	696(%rcx), %sil
	movb	696(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	697(%rcx), %sil
	movb	697(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	698(%rcx), %sil
	movb	698(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	699(%rcx), %sil
	movb	699(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	700(%rcx), %sil
	movb	700(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	701(%rcx), %sil
	movb	701(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	702(%rcx), %sil
	movb	702(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	703(%rcx), %sil
	movb	703(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	704(%rcx), %sil
	movb	704(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	705(%rcx), %sil
	movb	705(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	706(%rcx), %sil
	movb	706(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	707(%rcx), %sil
	movb	707(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	708(%rcx), %sil
	movb	708(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	709(%rcx), %sil
	movb	709(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	710(%rcx), %sil
	movb	710(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	711(%rcx), %sil
	movb	711(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	712(%rcx), %sil
	movb	712(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	713(%rcx), %sil
	movb	713(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	714(%rcx), %sil
	movb	714(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	715(%rcx), %sil
	movb	715(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	716(%rcx), %sil
	movb	716(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	717(%rcx), %sil
	movb	717(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	718(%rcx), %sil
	movb	718(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	719(%rcx), %sil
	movb	719(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	720(%rcx), %sil
	movb	720(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	721(%rcx), %sil
	movb	721(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	722(%rcx), %sil
	movb	722(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	723(%rcx), %sil
	movb	723(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	724(%rcx), %sil
	movb	724(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	725(%rcx), %sil
	movb	725(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	726(%rcx), %sil
	movb	726(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	727(%rcx), %sil
	movb	727(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	728(%rcx), %sil
	movb	728(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	729(%rcx), %sil
	movb	729(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	730(%rcx), %sil
	movb	730(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	731(%rcx), %sil
	movb	731(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	732(%rcx), %sil
	movb	732(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	733(%rcx), %sil
	movb	733(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	734(%rcx), %sil
	movb	734(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	735(%rcx), %sil
	movb	735(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	736(%rcx), %sil
	movb	736(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	737(%rcx), %sil
	movb	737(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	738(%rcx), %sil
	movb	738(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	739(%rcx), %sil
	movb	739(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	740(%rcx), %sil
	movb	740(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	741(%rcx), %sil
	movb	741(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	742(%rcx), %sil
	movb	742(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	743(%rcx), %sil
	movb	743(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	744(%rcx), %sil
	movb	744(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	745(%rcx), %sil
	movb	745(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	746(%rcx), %sil
	movb	746(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	747(%rcx), %sil
	movb	747(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	748(%rcx), %sil
	movb	748(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	749(%rcx), %sil
	movb	749(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	750(%rcx), %sil
	movb	750(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	751(%rcx), %sil
	movb	751(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	752(%rcx), %sil
	movb	752(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	753(%rcx), %sil
	movb	753(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	754(%rcx), %sil
	movb	754(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	755(%rcx), %sil
	movb	755(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	756(%rcx), %sil
	movb	756(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	757(%rcx), %sil
	movb	757(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	758(%rcx), %sil
	movb	758(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	759(%rcx), %sil
	movb	759(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	760(%rcx), %sil
	movb	760(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	761(%rcx), %sil
	movb	761(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	762(%rcx), %sil
	movb	762(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	763(%rcx), %sil
	movb	763(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	764(%rcx), %sil
	movb	764(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	765(%rcx), %sil
	movb	765(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	766(%rcx), %sil
	movb	766(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	767(%rcx), %sil
	movb	767(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	768(%rcx), %sil
	movb	768(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	769(%rcx), %sil
	movb	769(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	770(%rcx), %sil
	movb	770(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	771(%rcx), %sil
	movb	771(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	772(%rcx), %sil
	movb	772(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	773(%rcx), %sil
	movb	773(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	774(%rcx), %sil
	movb	774(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	775(%rcx), %sil
	movb	775(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	776(%rcx), %sil
	movb	776(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	777(%rcx), %sil
	movb	777(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	778(%rcx), %sil
	movb	778(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	779(%rcx), %sil
	movb	779(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	780(%rcx), %sil
	movb	780(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	781(%rcx), %sil
	movb	781(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	782(%rcx), %sil
	movb	782(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	783(%rcx), %sil
	movb	783(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	784(%rcx), %sil
	movb	784(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	785(%rcx), %sil
	movb	785(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	786(%rcx), %sil
	movb	786(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	787(%rcx), %sil
	movb	787(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	788(%rcx), %sil
	movb	788(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	789(%rcx), %sil
	movb	789(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	790(%rcx), %sil
	movb	790(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	791(%rcx), %sil
	movb	791(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	792(%rcx), %sil
	movb	792(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	793(%rcx), %sil
	movb	793(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	794(%rcx), %sil
	movb	794(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	795(%rcx), %sil
	movb	795(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	796(%rcx), %sil
	movb	796(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	797(%rcx), %sil
	movb	797(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	798(%rcx), %sil
	movb	798(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	799(%rcx), %sil
	movb	799(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	800(%rcx), %sil
	movb	800(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	801(%rcx), %sil
	movb	801(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	802(%rcx), %sil
	movb	802(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	803(%rcx), %sil
	movb	803(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	804(%rcx), %sil
	movb	804(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	805(%rcx), %sil
	movb	805(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	806(%rcx), %sil
	movb	806(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	807(%rcx), %sil
	movb	807(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	808(%rcx), %sil
	movb	808(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	809(%rcx), %sil
	movb	809(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	810(%rcx), %sil
	movb	810(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	811(%rcx), %sil
	movb	811(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	812(%rcx), %sil
	movb	812(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	813(%rcx), %sil
	movb	813(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	814(%rcx), %sil
	movb	814(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	815(%rcx), %sil
	movb	815(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	816(%rcx), %sil
	movb	816(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	817(%rcx), %sil
	movb	817(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	818(%rcx), %sil
	movb	818(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	819(%rcx), %sil
	movb	819(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	820(%rcx), %sil
	movb	820(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	821(%rcx), %sil
	movb	821(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	822(%rcx), %sil
	movb	822(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	823(%rcx), %sil
	movb	823(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	824(%rcx), %sil
	movb	824(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	825(%rcx), %sil
	movb	825(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	826(%rcx), %sil
	movb	826(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	827(%rcx), %sil
	movb	827(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	828(%rcx), %sil
	movb	828(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	829(%rcx), %sil
	movb	829(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	830(%rcx), %sil
	movb	830(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	831(%rcx), %sil
	movb	831(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	832(%rcx), %sil
	movb	832(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	833(%rcx), %sil
	movb	833(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	834(%rcx), %sil
	movb	834(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	835(%rcx), %sil
	movb	835(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	836(%rcx), %sil
	movb	836(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	837(%rcx), %sil
	movb	837(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	838(%rcx), %sil
	movb	838(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	839(%rcx), %sil
	movb	839(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	840(%rcx), %sil
	movb	840(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	841(%rcx), %sil
	movb	841(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	842(%rcx), %sil
	movb	842(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	843(%rcx), %sil
	movb	843(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	844(%rcx), %sil
	movb	844(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	845(%rcx), %sil
	movb	845(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	846(%rcx), %sil
	movb	846(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	847(%rcx), %sil
	movb	847(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	848(%rcx), %sil
	movb	848(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	849(%rcx), %sil
	movb	849(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	850(%rcx), %sil
	movb	850(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	851(%rcx), %sil
	movb	851(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	852(%rcx), %sil
	movb	852(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	853(%rcx), %sil
	movb	853(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	854(%rcx), %sil
	movb	854(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	855(%rcx), %sil
	movb	855(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	856(%rcx), %sil
	movb	856(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	857(%rcx), %sil
	movb	857(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	858(%rcx), %sil
	movb	858(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	859(%rcx), %sil
	movb	859(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	860(%rcx), %sil
	movb	860(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	861(%rcx), %sil
	movb	861(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	862(%rcx), %sil
	movb	862(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	863(%rcx), %sil
	movb	863(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	864(%rcx), %sil
	movb	864(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	865(%rcx), %sil
	movb	865(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	866(%rcx), %sil
	movb	866(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	867(%rcx), %sil
	movb	867(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	868(%rcx), %sil
	movb	868(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	869(%rcx), %sil
	movb	869(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	870(%rcx), %sil
	movb	870(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	871(%rcx), %sil
	movb	871(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	872(%rcx), %sil
	movb	872(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	873(%rcx), %sil
	movb	873(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	874(%rcx), %sil
	movb	874(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	875(%rcx), %sil
	movb	875(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	876(%rcx), %sil
	movb	876(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	877(%rcx), %sil
	movb	877(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	878(%rcx), %sil
	movb	878(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	879(%rcx), %sil
	movb	879(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	880(%rcx), %sil
	movb	880(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	881(%rcx), %sil
	movb	881(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	882(%rcx), %sil
	movb	882(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	883(%rcx), %sil
	movb	883(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	884(%rcx), %sil
	movb	884(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	885(%rcx), %sil
	movb	885(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	886(%rcx), %sil
	movb	886(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	887(%rcx), %sil
	movb	887(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	888(%rcx), %sil
	movb	888(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	889(%rcx), %sil
	movb	889(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	890(%rcx), %sil
	movb	890(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	891(%rcx), %sil
	movb	891(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	892(%rcx), %sil
	movb	892(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	893(%rcx), %sil
	movb	893(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	894(%rcx), %sil
	movb	894(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	895(%rcx), %sil
	movb	895(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	896(%rcx), %sil
	movb	896(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	897(%rcx), %sil
	movb	897(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	898(%rcx), %sil
	movb	898(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	899(%rcx), %sil
	movb	899(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	900(%rcx), %sil
	movb	900(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	901(%rcx), %sil
	movb	901(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	902(%rcx), %sil
	movb	902(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	903(%rcx), %sil
	movb	903(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	904(%rcx), %sil
	movb	904(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	905(%rcx), %sil
	movb	905(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	906(%rcx), %sil
	movb	906(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	907(%rcx), %sil
	movb	907(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	908(%rcx), %sil
	movb	908(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	909(%rcx), %sil
	movb	909(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	910(%rcx), %sil
	movb	910(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	911(%rcx), %sil
	movb	911(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	912(%rcx), %sil
	movb	912(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	913(%rcx), %sil
	movb	913(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	914(%rcx), %sil
	movb	914(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	915(%rcx), %sil
	movb	915(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	916(%rcx), %sil
	movb	916(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	917(%rcx), %sil
	movb	917(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	918(%rcx), %sil
	movb	918(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	919(%rcx), %sil
	movb	919(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	920(%rcx), %sil
	movb	920(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	921(%rcx), %sil
	movb	921(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	922(%rcx), %sil
	movb	922(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	923(%rcx), %sil
	movb	923(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	924(%rcx), %sil
	movb	924(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	925(%rcx), %sil
	movb	925(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	926(%rcx), %sil
	movb	926(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	927(%rcx), %sil
	movb	927(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	928(%rcx), %sil
	movb	928(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	929(%rcx), %sil
	movb	929(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	930(%rcx), %sil
	movb	930(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	931(%rcx), %sil
	movb	931(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	932(%rcx), %sil
	movb	932(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	933(%rcx), %sil
	movb	933(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	934(%rcx), %sil
	movb	934(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	935(%rcx), %sil
	movb	935(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	936(%rcx), %sil
	movb	936(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	937(%rcx), %sil
	movb	937(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	938(%rcx), %sil
	movb	938(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	939(%rcx), %sil
	movb	939(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	940(%rcx), %sil
	movb	940(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	941(%rcx), %sil
	movb	941(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	942(%rcx), %sil
	movb	942(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	943(%rcx), %sil
	movb	943(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	944(%rcx), %sil
	movb	944(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	945(%rcx), %sil
	movb	945(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	946(%rcx), %sil
	movb	946(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	947(%rcx), %sil
	movb	947(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	948(%rcx), %sil
	movb	948(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	949(%rcx), %sil
	movb	949(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	950(%rcx), %sil
	movb	950(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	951(%rcx), %sil
	movb	951(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	952(%rcx), %sil
	movb	952(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	953(%rcx), %sil
	movb	953(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	954(%rcx), %sil
	movb	954(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	955(%rcx), %sil
	movb	955(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	956(%rcx), %sil
	movb	956(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	957(%rcx), %sil
	movb	957(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	958(%rcx), %sil
	movb	958(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	959(%rcx), %sil
	movb	959(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	960(%rcx), %sil
	movb	960(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	961(%rcx), %sil
	movb	961(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	962(%rcx), %sil
	movb	962(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	963(%rcx), %sil
	movb	963(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	964(%rcx), %sil
	movb	964(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	965(%rcx), %sil
	movb	965(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	966(%rcx), %sil
	movb	966(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	967(%rcx), %sil
	movb	967(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	968(%rcx), %sil
	movb	968(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	969(%rcx), %sil
	movb	969(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	970(%rcx), %sil
	movb	970(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	971(%rcx), %sil
	movb	971(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	972(%rcx), %sil
	movb	972(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	973(%rcx), %sil
	movb	973(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	974(%rcx), %sil
	movb	974(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	975(%rcx), %sil
	movb	975(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	976(%rcx), %sil
	movb	976(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	977(%rcx), %sil
	movb	977(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	978(%rcx), %sil
	movb	978(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	979(%rcx), %sil
	movb	979(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	980(%rcx), %sil
	movb	980(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	981(%rcx), %sil
	movb	981(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	982(%rcx), %sil
	movb	982(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	983(%rcx), %sil
	movb	983(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	984(%rcx), %sil
	movb	984(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	985(%rcx), %sil
	movb	985(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	986(%rcx), %sil
	movb	986(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	987(%rcx), %sil
	movb	987(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	988(%rcx), %sil
	movb	988(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	989(%rcx), %sil
	movb	989(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	990(%rcx), %sil
	movb	990(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	991(%rcx), %sil
	movb	991(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	992(%rcx), %sil
	movb	992(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	993(%rcx), %sil
	movb	993(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	994(%rcx), %sil
	movb	994(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	995(%rcx), %sil
	movb	995(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	996(%rcx), %sil
	movb	996(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	997(%rcx), %sil
	movb	997(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	998(%rcx), %sil
	movb	998(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	999(%rcx), %sil
	movb	999(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1000(%rcx), %sil
	movb	1000(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1001(%rcx), %sil
	movb	1001(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1002(%rcx), %sil
	movb	1002(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1003(%rcx), %sil
	movb	1003(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1004(%rcx), %sil
	movb	1004(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1005(%rcx), %sil
	movb	1005(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1006(%rcx), %sil
	movb	1006(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1007(%rcx), %sil
	movb	1007(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1008(%rcx), %sil
	movb	1008(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1009(%rcx), %sil
	movb	1009(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1010(%rcx), %sil
	movb	1010(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1011(%rcx), %sil
	movb	1011(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1012(%rcx), %sil
	movb	1012(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1013(%rcx), %sil
	movb	1013(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1014(%rcx), %sil
	movb	1014(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1015(%rcx), %sil
	movb	1015(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1016(%rcx), %sil
	movb	1016(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1017(%rcx), %sil
	movb	1017(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1018(%rcx), %sil
	movb	1018(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1019(%rcx), %sil
	movb	1019(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1020(%rcx), %sil
	movb	1020(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1021(%rcx), %sil
	movb	1021(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1022(%rcx), %sil
	movb	1022(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1023(%rcx), %sil
	movb	1023(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1024(%rcx), %sil
	movb	1024(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1025(%rcx), %sil
	movb	1025(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1026(%rcx), %sil
	movb	1026(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1027(%rcx), %sil
	movb	1027(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1028(%rcx), %sil
	movb	1028(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1029(%rcx), %sil
	movb	1029(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1030(%rcx), %sil
	movb	1030(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1031(%rcx), %sil
	movb	1031(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1032(%rcx), %sil
	movb	1032(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1033(%rcx), %sil
	movb	1033(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1034(%rcx), %sil
	movb	1034(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1035(%rcx), %sil
	movb	1035(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1036(%rcx), %sil
	movb	1036(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1037(%rcx), %sil
	movb	1037(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1038(%rcx), %sil
	movb	1038(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1039(%rcx), %sil
	movb	1039(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1040(%rcx), %sil
	movb	1040(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1041(%rcx), %sil
	movb	1041(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1042(%rcx), %sil
	movb	1042(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1043(%rcx), %sil
	movb	1043(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1044(%rcx), %sil
	movb	1044(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1045(%rcx), %sil
	movb	1045(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1046(%rcx), %sil
	movb	1046(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1047(%rcx), %sil
	movb	1047(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1048(%rcx), %sil
	movb	1048(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1049(%rcx), %sil
	movb	1049(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1050(%rcx), %sil
	movb	1050(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1051(%rcx), %sil
	movb	1051(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1052(%rcx), %sil
	movb	1052(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1053(%rcx), %sil
	movb	1053(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1054(%rcx), %sil
	movb	1054(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1055(%rcx), %sil
	movb	1055(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1056(%rcx), %sil
	movb	1056(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1057(%rcx), %sil
	movb	1057(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1058(%rcx), %sil
	movb	1058(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1059(%rcx), %sil
	movb	1059(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1060(%rcx), %sil
	movb	1060(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1061(%rcx), %sil
	movb	1061(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1062(%rcx), %sil
	movb	1062(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1063(%rcx), %sil
	movb	1063(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1064(%rcx), %sil
	movb	1064(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1065(%rcx), %sil
	movb	1065(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1066(%rcx), %sil
	movb	1066(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1067(%rcx), %sil
	movb	1067(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1068(%rcx), %sil
	movb	1068(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1069(%rcx), %sil
	movb	1069(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1070(%rcx), %sil
	movb	1070(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1071(%rcx), %sil
	movb	1071(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1072(%rcx), %sil
	movb	1072(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1073(%rcx), %sil
	movb	1073(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1074(%rcx), %sil
	movb	1074(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1075(%rcx), %sil
	movb	1075(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1076(%rcx), %sil
	movb	1076(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1077(%rcx), %sil
	movb	1077(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1078(%rcx), %sil
	movb	1078(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1079(%rcx), %sil
	movb	1079(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1080(%rcx), %sil
	movb	1080(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1081(%rcx), %sil
	movb	1081(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1082(%rcx), %sil
	movb	1082(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1083(%rcx), %sil
	movb	1083(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1084(%rcx), %sil
	movb	1084(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1085(%rcx), %sil
	movb	1085(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1086(%rcx), %sil
	movb	1086(%rax), %dil
	xorb	%dil, %sil
	movzbq	%sil, %rsi
	orq 	%rsi, %rdx
	movb	1087(%rcx), %cl
	movb	1087(%rax), %sil
	xorb	%sil, %cl
	movzbq	%cl, %rcx
	orq 	%rcx, %rdx
	negq	%rdx
	shrq	$63, %rdx
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	addq	$64, %rcx
	addq	$2304, %rcx
	movq	32(%rsp), %rdx
	leaq	-232(%rsp), %rsp
	call	L_shake256_1120_32$1
L_crypto_xkem_dec_jazz$4:
	leaq	232(%rsp), %rsp
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	leaq	184(%rsp), %rdx
	negq	%rcx
	movb	(%rax), %sil
	movb	(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, (%rax)
	movb	1(%rax), %sil
	movb	1(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 1(%rax)
	movb	2(%rax), %sil
	movb	2(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 2(%rax)
	movb	3(%rax), %sil
	movb	3(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 3(%rax)
	movb	4(%rax), %sil
	movb	4(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 4(%rax)
	movb	5(%rax), %sil
	movb	5(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 5(%rax)
	movb	6(%rax), %sil
	movb	6(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 6(%rax)
	movb	7(%rax), %sil
	movb	7(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 7(%rax)
	movb	8(%rax), %sil
	movb	8(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 8(%rax)
	movb	9(%rax), %sil
	movb	9(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 9(%rax)
	movb	10(%rax), %sil
	movb	10(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 10(%rax)
	movb	11(%rax), %sil
	movb	11(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 11(%rax)
	movb	12(%rax), %sil
	movb	12(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 12(%rax)
	movb	13(%rax), %sil
	movb	13(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 13(%rax)
	movb	14(%rax), %sil
	movb	14(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 14(%rax)
	movb	15(%rax), %sil
	movb	15(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 15(%rax)
	movb	16(%rax), %sil
	movb	16(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 16(%rax)
	movb	17(%rax), %sil
	movb	17(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 17(%rax)
	movb	18(%rax), %sil
	movb	18(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 18(%rax)
	movb	19(%rax), %sil
	movb	19(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 19(%rax)
	movb	20(%rax), %sil
	movb	20(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 20(%rax)
	movb	21(%rax), %sil
	movb	21(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 21(%rax)
	movb	22(%rax), %sil
	movb	22(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 22(%rax)
	movb	23(%rax), %sil
	movb	23(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 23(%rax)
	movb	24(%rax), %sil
	movb	24(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 24(%rax)
	movb	25(%rax), %sil
	movb	25(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 25(%rax)
	movb	26(%rax), %sil
	movb	26(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 26(%rax)
	movb	27(%rax), %sil
	movb	27(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 27(%rax)
	movb	28(%rax), %sil
	movb	28(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 28(%rax)
	movb	29(%rax), %sil
	movb	29(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 29(%rax)
	movb	30(%rax), %sil
	movb	30(%rdx), %dil
	xorb	%dil, %sil
	andb	%cl, %sil
	xorb	%sil, %dil
	movb	%dil, 30(%rax)
	movb	31(%rax), %sil
	movb	31(%rdx), %dl
	xorb	%dl, %sil
	andb	%cl, %sil
	xorb	%sil, %dl
	movb	%dl, 31(%rax)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	2400(%rax), %rax
	leaq	1088(%rcx), %rdx
	leaq	88(%rsp), %rcx
	call	Lxwing_x25519_rp_p_p$1
L_crypto_xkem_dec_jazz$3:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	lfence
	movq	$0, %rsi
	movq	%rax, %rdi
	leaq	1088(%rcx), %rcx
	leaq	2432(%rdx), %rdx
	leaq	88(%rsp), %rsi
	leaq	-200(%rsp), %rsp
	call	L_xwing_sha3$1
L_crypto_xkem_dec_jazz$2:
	leaq	200(%rsp), %rsp
	ret
L_crypto_xkem_enc_derand_jazz$1:
	movq	%rbp, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 136(%rsp)
	movq	40(%rsp), %r8
	movq	$1184, %rax
	leaq	144(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
L_crypto_xkem_enc_derand_jazz$208:
	leaq	232(%rsp), %rsp
	leaq	176(%rsp), %rax
	leaq	112(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	call	L_sha3_512_64$1
L_crypto_xkem_enc_derand_jazz$207:
	leaq	208(%rsp), %rsp
	movq	40(%rsp), %rcx
	leaq	112(%rsp), %rax
	leaq	208(%rsp), %rdx
	movq	%rdx, 40(%rsp)
	movq	%rcx, %rsi
	leaq	2488(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$206:
	addq	$384, %rsi
	leaq	3000(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$205:
	addq	$384, %rsi
	leaq	3512(%rsp), %rdi
	call	L_poly_frombytes$1
L_crypto_xkem_enc_derand_jazz$204:
	movq	$0, %rdx
	addq	$1152, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$202
L_crypto_xkem_enc_derand_jazz$203:
	movq	(%rcx), %rsi
	movq	%rsi, 80(%rsp,%rdx,8)
	addq	$8, %rcx
	incq	%rdx
L_crypto_xkem_enc_derand_jazz$202:
	cmpq	$4, %rdx
	jb  	L_crypto_xkem_enc_derand_jazz$203
	leaq	440(%rsp), %rcx
	call	L_i_poly_frommsg$1
L_crypto_xkem_enc_derand_jazz$201:
	movq	$1, %rax
	movq	%rax, 64(%rsp)
	movb	80(%rsp), %al
	movb	%al, 13240(%rsp)
	movb	81(%rsp), %al
	movb	%al, 13241(%rsp)
	movb	82(%rsp), %al
	movb	%al, 13242(%rsp)
	movb	83(%rsp), %al
	movb	%al, 13243(%rsp)
	movb	84(%rsp), %al
	movb	%al, 13244(%rsp)
	movb	85(%rsp), %al
	movb	%al, 13245(%rsp)
	movb	86(%rsp), %al
	movb	%al, 13246(%rsp)
	movb	87(%rsp), %al
	movb	%al, 13247(%rsp)
	movb	88(%rsp), %al
	movb	%al, 13248(%rsp)
	movb	89(%rsp), %al
	movb	%al, 13249(%rsp)
	movb	90(%rsp), %al
	movb	%al, 13250(%rsp)
	movb	91(%rsp), %al
	movb	%al, 13251(%rsp)
	movb	92(%rsp), %al
	movb	%al, 13252(%rsp)
	movb	93(%rsp), %al
	movb	%al, 13253(%rsp)
	movb	94(%rsp), %al
	movb	%al, 13254(%rsp)
	movb	95(%rsp), %al
	movb	%al, 13255(%rsp)
	movb	96(%rsp), %al
	movb	%al, 13256(%rsp)
	movb	97(%rsp), %al
	movb	%al, 13257(%rsp)
	movb	98(%rsp), %al
	movb	%al, 13258(%rsp)
	movb	99(%rsp), %al
	movb	%al, 13259(%rsp)
	movb	100(%rsp), %al
	movb	%al, 13260(%rsp)
	movb	101(%rsp), %al
	movb	%al, 13261(%rsp)
	movb	102(%rsp), %al
	movb	%al, 13262(%rsp)
	movb	103(%rsp), %al
	movb	%al, 13263(%rsp)
	movb	104(%rsp), %al
	movb	%al, 13264(%rsp)
	movb	105(%rsp), %al
	movb	%al, 13265(%rsp)
	movb	106(%rsp), %al
	movb	%al, 13266(%rsp)
	movb	107(%rsp), %al
	movb	%al, 13267(%rsp)
	movb	108(%rsp), %al
	movb	%al, 13268(%rsp)
	movb	109(%rsp), %al
	movb	%al, 13269(%rsp)
	movb	110(%rsp), %al
	movb	%al, 13270(%rsp)
	movb	111(%rsp), %al
	movb	%al, 13271(%rsp)
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$199
	movb	$0, 13272(%rsp)
	movb	$0, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$200
L_crypto_xkem_enc_derand_jazz$199:
	movb	$0, 13272(%rsp)
	movb	$0, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$200:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$198:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$188
L_crypto_xkem_enc_derand_jazz$189:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$197:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$190
L_crypto_xkem_enc_derand_jazz$191:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$192
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$190
L_crypto_xkem_enc_derand_jazz$192:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$196
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$196:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$190
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$190
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$195:
L_crypto_xkem_enc_derand_jazz$194:
L_crypto_xkem_enc_derand_jazz$193:
L_crypto_xkem_enc_derand_jazz$190:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$191
L_crypto_xkem_enc_derand_jazz$188:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$189
	movq	$0, %rax
	leaq	8632(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$186
L_crypto_xkem_enc_derand_jazz$187:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$186:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$187
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$184
	movb	$0, 13272(%rsp)
	movb	$1, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$185
L_crypto_xkem_enc_derand_jazz$184:
	movb	$1, 13272(%rsp)
	movb	$0, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$185:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$183:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$173
L_crypto_xkem_enc_derand_jazz$174:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$182:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$175
L_crypto_xkem_enc_derand_jazz$176:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$177
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$175
L_crypto_xkem_enc_derand_jazz$177:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$181
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$181:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$175
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$175
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$180:
L_crypto_xkem_enc_derand_jazz$179:
L_crypto_xkem_enc_derand_jazz$178:
L_crypto_xkem_enc_derand_jazz$175:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$176
L_crypto_xkem_enc_derand_jazz$173:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$174
	movq	$0, %rax
	leaq	9144(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$171
L_crypto_xkem_enc_derand_jazz$172:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$171:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$172
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$169
	movb	$0, 13272(%rsp)
	movb	$2, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$170
L_crypto_xkem_enc_derand_jazz$169:
	movb	$2, 13272(%rsp)
	movb	$0, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$170:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$168:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$158
L_crypto_xkem_enc_derand_jazz$159:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$167:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$160
L_crypto_xkem_enc_derand_jazz$161:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$162
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$160
L_crypto_xkem_enc_derand_jazz$162:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$166
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$166:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$160
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$160
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$165:
L_crypto_xkem_enc_derand_jazz$164:
L_crypto_xkem_enc_derand_jazz$163:
L_crypto_xkem_enc_derand_jazz$160:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$161
L_crypto_xkem_enc_derand_jazz$158:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$159
	movq	$0, %rax
	leaq	9656(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$156
L_crypto_xkem_enc_derand_jazz$157:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$156:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$157
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$154
	movb	$1, 13272(%rsp)
	movb	$0, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$155
L_crypto_xkem_enc_derand_jazz$154:
	movb	$0, 13272(%rsp)
	movb	$1, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$155:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$153:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$143
L_crypto_xkem_enc_derand_jazz$144:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$152:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$145
L_crypto_xkem_enc_derand_jazz$146:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$147
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$145
L_crypto_xkem_enc_derand_jazz$147:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$151
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$151:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$145
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$145
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$150:
L_crypto_xkem_enc_derand_jazz$149:
L_crypto_xkem_enc_derand_jazz$148:
L_crypto_xkem_enc_derand_jazz$145:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$146
L_crypto_xkem_enc_derand_jazz$143:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$144
	movq	$0, %rax
	leaq	10168(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$141
L_crypto_xkem_enc_derand_jazz$142:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$141:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$142
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$139
	movb	$1, 13272(%rsp)
	movb	$1, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$140
L_crypto_xkem_enc_derand_jazz$139:
	movb	$1, 13272(%rsp)
	movb	$1, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$140:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$138:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$128
L_crypto_xkem_enc_derand_jazz$129:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$137:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$130
L_crypto_xkem_enc_derand_jazz$131:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$132
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$130
L_crypto_xkem_enc_derand_jazz$132:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$136
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$136:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$130
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$130
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$135:
L_crypto_xkem_enc_derand_jazz$134:
L_crypto_xkem_enc_derand_jazz$133:
L_crypto_xkem_enc_derand_jazz$130:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$131
L_crypto_xkem_enc_derand_jazz$128:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$129
	movq	$0, %rax
	leaq	10680(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$126
L_crypto_xkem_enc_derand_jazz$127:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$126:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$127
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$124
	movb	$1, 13272(%rsp)
	movb	$2, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$125
L_crypto_xkem_enc_derand_jazz$124:
	movb	$2, 13272(%rsp)
	movb	$1, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$125:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$123:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$113
L_crypto_xkem_enc_derand_jazz$114:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$122:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$115
L_crypto_xkem_enc_derand_jazz$116:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$117
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$115
L_crypto_xkem_enc_derand_jazz$117:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$121
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$121:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$115
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$115
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$120:
L_crypto_xkem_enc_derand_jazz$119:
L_crypto_xkem_enc_derand_jazz$118:
L_crypto_xkem_enc_derand_jazz$115:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$116
L_crypto_xkem_enc_derand_jazz$113:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$114
	movq	$0, %rax
	leaq	11192(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$111
L_crypto_xkem_enc_derand_jazz$112:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$111:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$112
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$109
	movb	$2, 13272(%rsp)
	movb	$0, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$110
L_crypto_xkem_enc_derand_jazz$109:
	movb	$0, 13272(%rsp)
	movb	$2, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$110:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$108:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$98
L_crypto_xkem_enc_derand_jazz$99:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$107:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$100
L_crypto_xkem_enc_derand_jazz$101:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$102
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$100
L_crypto_xkem_enc_derand_jazz$102:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$106
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$106:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$100
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$100
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$105:
L_crypto_xkem_enc_derand_jazz$104:
L_crypto_xkem_enc_derand_jazz$103:
L_crypto_xkem_enc_derand_jazz$100:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$101
L_crypto_xkem_enc_derand_jazz$98:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$99
	movq	$0, %rax
	leaq	11704(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$96
L_crypto_xkem_enc_derand_jazz$97:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$96:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$97
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$94
	movb	$2, 13272(%rsp)
	movb	$1, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$95
L_crypto_xkem_enc_derand_jazz$94:
	movb	$1, 13272(%rsp)
	movb	$2, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$95:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$93:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$83
L_crypto_xkem_enc_derand_jazz$84:
	movq	%rax, 72(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$92:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$85
L_crypto_xkem_enc_derand_jazz$86:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$87
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$85
L_crypto_xkem_enc_derand_jazz$87:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$91
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$91:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$85
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$85
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$90:
L_crypto_xkem_enc_derand_jazz$89:
L_crypto_xkem_enc_derand_jazz$88:
L_crypto_xkem_enc_derand_jazz$85:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$86
L_crypto_xkem_enc_derand_jazz$83:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$84
	movq	$0, %rax
	leaq	12216(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$81
L_crypto_xkem_enc_derand_jazz$82:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$81:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$82
	movq	64(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_enc_derand_jazz$79
	movb	$2, 13272(%rsp)
	movb	$2, 13273(%rsp)
	jmp 	L_crypto_xkem_enc_derand_jazz$80
L_crypto_xkem_enc_derand_jazz$79:
	movb	$2, 13272(%rsp)
	movb	$2, 13273(%rsp)
L_crypto_xkem_enc_derand_jazz$80:
	leaq	240(%rsp), %rax
	leaq	13240(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_enc_derand_jazz$78:
	movq	$0, %rax
	jmp 	L_crypto_xkem_enc_derand_jazz$68
L_crypto_xkem_enc_derand_jazz$69:
	movq	%rax, 64(%rsp)
	leaq	240(%rsp), %rax
	leaq	13274(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_enc_derand_jazz$77:
	leaq	8(%rsp), %rsp
	movq	64(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$70
L_crypto_xkem_enc_derand_jazz$71:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$72
	movq	$168, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$70
L_crypto_xkem_enc_derand_jazz$72:
	movzbw	13274(%rsp,%rcx), %dx
	movzbw	13275(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	13276(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_enc_derand_jazz$76
	movw	%dx, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$76:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_enc_derand_jazz$70
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_enc_derand_jazz$70
	movw	%di, 952(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$75:
L_crypto_xkem_enc_derand_jazz$74:
L_crypto_xkem_enc_derand_jazz$73:
L_crypto_xkem_enc_derand_jazz$70:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$71
L_crypto_xkem_enc_derand_jazz$68:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$69
	movq	$0, %rax
	leaq	12728(%rsp), %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$66
L_crypto_xkem_enc_derand_jazz$67:
	movw	952(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_enc_derand_jazz$66:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_enc_derand_jazz$67
	movb	$0, %al
	leaq	4024(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$65:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	4536(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$64:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	5048(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$63:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	5560(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$62:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	6072(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$61:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	6584(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$60:
	leaq	176(%rsp), %rsp
	movb	$6, %al
	leaq	952(%rsp), %rdx
	movq	40(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_enc_derand_jazz$59:
	leaq	176(%rsp), %rsp
	leaq	4024(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$58:
	leaq	4536(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$57:
	leaq	5048(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_enc_derand_jazz$56:
	leaq	7096(%rsp), %rdi
	leaq	8632(%rsp), %rcx
	leaq	4024(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$55:
	leaq	16(%rsp), %rsp
	leaq	1464(%rsp), %rdi
	leaq	9144(%rsp), %rcx
	leaq	4536(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$54:
	leaq	16(%rsp), %rsp
	leaq	7096(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$53:
	leaq	1464(%rsp), %rdi
	leaq	9656(%rsp), %rcx
	leaq	5048(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$52:
	leaq	16(%rsp), %rsp
	leaq	7096(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$51:
	leaq	7096(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$49
L_crypto_xkem_enc_derand_jazz$50:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$49:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$50
	leaq	7608(%rsp), %rdi
	leaq	10168(%rsp), %rcx
	leaq	4024(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$48:
	leaq	16(%rsp), %rsp
	leaq	1464(%rsp), %rdi
	leaq	10680(%rsp), %rcx
	leaq	4536(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$47:
	leaq	16(%rsp), %rsp
	leaq	7608(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$46:
	leaq	1464(%rsp), %rdi
	leaq	11192(%rsp), %rcx
	leaq	5048(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$45:
	leaq	16(%rsp), %rsp
	leaq	7608(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$44:
	leaq	7608(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$42
L_crypto_xkem_enc_derand_jazz$43:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$42:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$43
	leaq	8120(%rsp), %rdi
	leaq	11704(%rsp), %rcx
	leaq	4024(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$41:
	leaq	16(%rsp), %rsp
	leaq	1464(%rsp), %rdi
	leaq	12216(%rsp), %rcx
	leaq	4536(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$40:
	leaq	16(%rsp), %rsp
	leaq	8120(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$39:
	leaq	1464(%rsp), %rdi
	leaq	12728(%rsp), %rcx
	leaq	5048(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$38:
	leaq	16(%rsp), %rsp
	leaq	8120(%rsp), %rcx
	leaq	1464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$37:
	leaq	8120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$35
L_crypto_xkem_enc_derand_jazz$36:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$35:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$36
	leaq	1464(%rsp), %rdi
	leaq	2488(%rsp), %rcx
	leaq	4024(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$34:
	leaq	16(%rsp), %rsp
	leaq	1976(%rsp), %rdi
	leaq	3000(%rsp), %rcx
	leaq	4536(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$33:
	leaq	16(%rsp), %rsp
	leaq	1464(%rsp), %rcx
	leaq	1976(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$32:
	leaq	1976(%rsp), %rdi
	leaq	3512(%rsp), %rcx
	leaq	5048(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_enc_derand_jazz$31:
	leaq	16(%rsp), %rsp
	leaq	1464(%rsp), %rcx
	leaq	1976(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$30:
	leaq	1464(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$28
L_crypto_xkem_enc_derand_jazz$29:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$28:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$29
	leaq	7096(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$27:
	leaq	7608(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$26:
	leaq	8120(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$25:
	leaq	1464(%rsp), %rcx
	call	L_poly_invntt$1
L_crypto_xkem_enc_derand_jazz$24:
	leaq	7096(%rsp), %rcx
	leaq	5560(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$23:
	leaq	7608(%rsp), %rcx
	leaq	6072(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$22:
	leaq	8120(%rsp), %rcx
	leaq	6584(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$21:
	leaq	1464(%rsp), %rcx
	leaq	952(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$20:
	leaq	1464(%rsp), %rcx
	leaq	440(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_enc_derand_jazz$19:
	leaq	7096(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$17
L_crypto_xkem_enc_derand_jazz$18:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$17:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$18
	leaq	7608(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$15
L_crypto_xkem_enc_derand_jazz$16:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$15:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$16
	leaq	8120(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$13
L_crypto_xkem_enc_derand_jazz$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$13:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$14
	leaq	1464(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_enc_derand_jazz$11
L_crypto_xkem_enc_derand_jazz$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_enc_derand_jazz$11:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_enc_derand_jazz$12
	movq	48(%rsp), %rax
	movq	$0, %rdx
	movq	$0, %rsi
	leaq	7096(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$10:
	leaq	7608(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$9:
	leaq	8120(%rsp), %rcx
	call	L_poly_csubq$1
L_crypto_xkem_enc_derand_jazz$8:
	jmp 	L_crypto_xkem_enc_derand_jazz$6
L_crypto_xkem_enc_derand_jazz$7:
	movzwq	7096(%rsp,%rdx,2), %rcx
	incq	%rdx
	shlq	$10, %rcx
	addq	$1665, %rcx
	imulq	$1290167, %rcx, %rcx
	shrq	$32, %rcx
	andq	$1023, %rcx
	movzwq	7096(%rsp,%rdx,2), %rdi
	incq	%rdx
	shlq	$10, %rdi
	addq	$1665, %rdi
	imulq	$1290167, %rdi, %rdi
	shrq	$32, %rdi
	andq	$1023, %rdi
	movzwq	7096(%rsp,%rdx,2), %r8
	incq	%rdx
	shlq	$10, %r8
	addq	$1665, %r8
	imulq	$1290167, %r8, %r8
	shrq	$32, %r8
	andq	$1023, %r8
	movzwq	7096(%rsp,%rdx,2), %r9
	incq	%rdx
	shlq	$10, %r9
	addq	$1665, %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movw	%cx, %r10w
	andw	$255, %r10w
	movb	%r10b, (%rax,%rsi)
	incq	%rsi
	shrw	$8, %cx
	movw	%di, %r10w
	shlw	$2, %r10w
	orw 	%cx, %r10w
	movb	%r10b, (%rax,%rsi)
	incq	%rsi
	shrw	$6, %di
	movw	%r8w, %cx
	shlw	$4, %cx
	orw 	%di, %cx
	movb	%cl, (%rax,%rsi)
	incq	%rsi
	shrw	$4, %r8w
	movw	%r9w, %cx
	shlw	$6, %cx
	orw 	%r8w, %cx
	movb	%cl, (%rax,%rsi)
	incq	%rsi
	shrq	$2, %r9
	movb	%r9b, (%rax,%rsi)
	incq	%rsi
L_crypto_xkem_enc_derand_jazz$6:
	cmpq	$765, %rdx
	jb  	L_crypto_xkem_enc_derand_jazz$7
	addq	$960, %rax
	leaq	1464(%rsp), %rcx
	call	L_poly_compress$1
L_crypto_xkem_enc_derand_jazz$5:
	movq	56(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	184(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	192(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	1088(%rax), %rax
	leaq	32(%rcx), %rcx
	call	Lxwing_x25519_base_p_rp$1
L_crypto_xkem_enc_derand_jazz$4:
	movq	32(%rsp), %rax
	movq	8(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	32(%rax), %rax
	leaq	1184(%rcx), %rdx
	leaq	80(%rsp), %rcx
	call	Lxwing_x25519_rp_rp_p$1
L_crypto_xkem_enc_derand_jazz$3:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rdx
	lfence
	movq	$0, %rsi
	movq	%rax, %rdi
	leaq	1088(%rcx), %rcx
	leaq	1184(%rdx), %rdx
	leaq	80(%rsp), %rsi
	leaq	-200(%rsp), %rsp
	call	L_xwing_sha3$1
L_crypto_xkem_enc_derand_jazz$2:
	leaq	200(%rsp), %rsp
	ret
L_crypto_xkem_keypair_derand_jazz$1:
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rbp, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 112(%rsp)
	leaq	152(%rsp), %rcx
	leaq	88(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_sha3512_32$1
L_crypto_xkem_keypair_derand_jazz$190:
	leaq	208(%rsp), %rsp
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	$0, %rax
	movq	%rax, 72(%rsp)
	movb	120(%rsp), %al
	movb	%al, 10144(%rsp)
	movb	121(%rsp), %al
	movb	%al, 10145(%rsp)
	movb	122(%rsp), %al
	movb	%al, 10146(%rsp)
	movb	123(%rsp), %al
	movb	%al, 10147(%rsp)
	movb	124(%rsp), %al
	movb	%al, 10148(%rsp)
	movb	125(%rsp), %al
	movb	%al, 10149(%rsp)
	movb	126(%rsp), %al
	movb	%al, 10150(%rsp)
	movb	127(%rsp), %al
	movb	%al, 10151(%rsp)
	movb	128(%rsp), %al
	movb	%al, 10152(%rsp)
	movb	129(%rsp), %al
	movb	%al, 10153(%rsp)
	movb	130(%rsp), %al
	movb	%al, 10154(%rsp)
	movb	131(%rsp), %al
	movb	%al, 10155(%rsp)
	movb	132(%rsp), %al
	movb	%al, 10156(%rsp)
	movb	133(%rsp), %al
	movb	%al, 10157(%rsp)
	movb	134(%rsp), %al
	movb	%al, 10158(%rsp)
	movb	135(%rsp), %al
	movb	%al, 10159(%rsp)
	movb	136(%rsp), %al
	movb	%al, 10160(%rsp)
	movb	137(%rsp), %al
	movb	%al, 10161(%rsp)
	movb	138(%rsp), %al
	movb	%al, 10162(%rsp)
	movb	139(%rsp), %al
	movb	%al, 10163(%rsp)
	movb	140(%rsp), %al
	movb	%al, 10164(%rsp)
	movb	141(%rsp), %al
	movb	%al, 10165(%rsp)
	movb	142(%rsp), %al
	movb	%al, 10166(%rsp)
	movb	143(%rsp), %al
	movb	%al, 10167(%rsp)
	movb	144(%rsp), %al
	movb	%al, 10168(%rsp)
	movb	145(%rsp), %al
	movb	%al, 10169(%rsp)
	movb	146(%rsp), %al
	movb	%al, 10170(%rsp)
	movb	147(%rsp), %al
	movb	%al, 10171(%rsp)
	movb	148(%rsp), %al
	movb	%al, 10172(%rsp)
	movb	149(%rsp), %al
	movb	%al, 10173(%rsp)
	movb	150(%rsp), %al
	movb	%al, 10174(%rsp)
	movb	151(%rsp), %al
	movb	%al, 10175(%rsp)
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$188
	movb	$0, 10176(%rsp)
	movb	$0, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$189
L_crypto_xkem_keypair_derand_jazz$188:
	movb	$0, 10176(%rsp)
	movb	$0, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$189:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$187:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$177
L_crypto_xkem_keypair_derand_jazz$178:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$186:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$179
L_crypto_xkem_keypair_derand_jazz$180:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$181
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$179
L_crypto_xkem_keypair_derand_jazz$181:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$185
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$185:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$179
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$179
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$184:
L_crypto_xkem_keypair_derand_jazz$183:
L_crypto_xkem_keypair_derand_jazz$182:
L_crypto_xkem_keypair_derand_jazz$179:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$180
L_crypto_xkem_keypair_derand_jazz$177:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$178
	movq	$0, %rax
	leaq	5536(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$175
L_crypto_xkem_keypair_derand_jazz$176:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$175:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$176
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$173
	movb	$0, 10176(%rsp)
	movb	$1, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$174
L_crypto_xkem_keypair_derand_jazz$173:
	movb	$1, 10176(%rsp)
	movb	$0, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$174:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$172:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$162
L_crypto_xkem_keypair_derand_jazz$163:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$171:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$164
L_crypto_xkem_keypair_derand_jazz$165:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$166
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$164
L_crypto_xkem_keypair_derand_jazz$166:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$170
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$170:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$164
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$164
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$169:
L_crypto_xkem_keypair_derand_jazz$168:
L_crypto_xkem_keypair_derand_jazz$167:
L_crypto_xkem_keypair_derand_jazz$164:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$165
L_crypto_xkem_keypair_derand_jazz$162:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$163
	movq	$0, %rax
	leaq	6048(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$160
L_crypto_xkem_keypair_derand_jazz$161:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$160:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$161
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$158
	movb	$0, 10176(%rsp)
	movb	$2, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$159
L_crypto_xkem_keypair_derand_jazz$158:
	movb	$2, 10176(%rsp)
	movb	$0, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$159:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$157:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$147
L_crypto_xkem_keypair_derand_jazz$148:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$156:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$149
L_crypto_xkem_keypair_derand_jazz$150:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$151
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$149
L_crypto_xkem_keypair_derand_jazz$151:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$155
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$155:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$149
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$149
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$154:
L_crypto_xkem_keypair_derand_jazz$153:
L_crypto_xkem_keypair_derand_jazz$152:
L_crypto_xkem_keypair_derand_jazz$149:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$150
L_crypto_xkem_keypair_derand_jazz$147:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$148
	movq	$0, %rax
	leaq	6560(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$145
L_crypto_xkem_keypair_derand_jazz$146:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$145:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$146
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$143
	movb	$1, 10176(%rsp)
	movb	$0, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$144
L_crypto_xkem_keypair_derand_jazz$143:
	movb	$0, 10176(%rsp)
	movb	$1, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$144:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$142:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$132
L_crypto_xkem_keypair_derand_jazz$133:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$141:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$134
L_crypto_xkem_keypair_derand_jazz$135:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$136
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$134
L_crypto_xkem_keypair_derand_jazz$136:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$140
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$140:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$134
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$134
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$139:
L_crypto_xkem_keypair_derand_jazz$138:
L_crypto_xkem_keypair_derand_jazz$137:
L_crypto_xkem_keypair_derand_jazz$134:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$135
L_crypto_xkem_keypair_derand_jazz$132:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$133
	movq	$0, %rax
	leaq	7072(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$130
L_crypto_xkem_keypair_derand_jazz$131:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$130:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$131
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$128
	movb	$1, 10176(%rsp)
	movb	$1, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$129
L_crypto_xkem_keypair_derand_jazz$128:
	movb	$1, 10176(%rsp)
	movb	$1, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$129:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$127:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$117
L_crypto_xkem_keypair_derand_jazz$118:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$126:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$119
L_crypto_xkem_keypair_derand_jazz$120:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$121
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$119
L_crypto_xkem_keypair_derand_jazz$121:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$125
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$125:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$119
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$119
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$124:
L_crypto_xkem_keypair_derand_jazz$123:
L_crypto_xkem_keypair_derand_jazz$122:
L_crypto_xkem_keypair_derand_jazz$119:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$120
L_crypto_xkem_keypair_derand_jazz$117:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$118
	movq	$0, %rax
	leaq	7584(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$115
L_crypto_xkem_keypair_derand_jazz$116:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$115:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$116
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$113
	movb	$1, 10176(%rsp)
	movb	$2, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$114
L_crypto_xkem_keypair_derand_jazz$113:
	movb	$2, 10176(%rsp)
	movb	$1, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$114:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$112:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$102
L_crypto_xkem_keypair_derand_jazz$103:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$111:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$104
L_crypto_xkem_keypair_derand_jazz$105:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$106
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$104
L_crypto_xkem_keypair_derand_jazz$106:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$110
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$110:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$104
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$104
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$109:
L_crypto_xkem_keypair_derand_jazz$108:
L_crypto_xkem_keypair_derand_jazz$107:
L_crypto_xkem_keypair_derand_jazz$104:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$105
L_crypto_xkem_keypair_derand_jazz$102:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$103
	movq	$0, %rax
	leaq	8096(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$100
L_crypto_xkem_keypair_derand_jazz$101:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$100:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$101
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$98
	movb	$2, 10176(%rsp)
	movb	$0, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$99
L_crypto_xkem_keypair_derand_jazz$98:
	movb	$0, 10176(%rsp)
	movb	$2, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$99:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$97:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$87
L_crypto_xkem_keypair_derand_jazz$88:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$96:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$89
L_crypto_xkem_keypair_derand_jazz$90:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$91
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$89
L_crypto_xkem_keypair_derand_jazz$91:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$95
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$95:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$89
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$89
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$94:
L_crypto_xkem_keypair_derand_jazz$93:
L_crypto_xkem_keypair_derand_jazz$92:
L_crypto_xkem_keypair_derand_jazz$89:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$90
L_crypto_xkem_keypair_derand_jazz$87:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$88
	movq	$0, %rax
	leaq	8608(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$85
L_crypto_xkem_keypair_derand_jazz$86:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$85:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$86
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$83
	movb	$2, 10176(%rsp)
	movb	$1, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$84
L_crypto_xkem_keypair_derand_jazz$83:
	movb	$1, 10176(%rsp)
	movb	$2, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$84:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$82:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$72
L_crypto_xkem_keypair_derand_jazz$73:
	movq	%rax, 80(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$81:
	leaq	8(%rsp), %rsp
	movq	80(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$74
L_crypto_xkem_keypair_derand_jazz$75:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$76
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$74
L_crypto_xkem_keypair_derand_jazz$76:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$80
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$80:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$74
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$74
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$79:
L_crypto_xkem_keypair_derand_jazz$78:
L_crypto_xkem_keypair_derand_jazz$77:
L_crypto_xkem_keypair_derand_jazz$74:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$75
L_crypto_xkem_keypair_derand_jazz$72:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$73
	movq	$0, %rax
	leaq	9120(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$70
L_crypto_xkem_keypair_derand_jazz$71:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$70:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$71
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	je  	L_crypto_xkem_keypair_derand_jazz$68
	movb	$2, 10176(%rsp)
	movb	$2, 10177(%rsp)
	jmp 	L_crypto_xkem_keypair_derand_jazz$69
L_crypto_xkem_keypair_derand_jazz$68:
	movb	$2, 10176(%rsp)
	movb	$2, 10177(%rsp)
L_crypto_xkem_keypair_derand_jazz$69:
	leaq	216(%rsp), %rax
	leaq	10144(%rsp), %rcx
	call	L_shake128_absorb34$1
L_crypto_xkem_keypair_derand_jazz$67:
	movq	$0, %rax
	jmp 	L_crypto_xkem_keypair_derand_jazz$57
L_crypto_xkem_keypair_derand_jazz$58:
	movq	%rax, 72(%rsp)
	leaq	216(%rsp), %rax
	leaq	10178(%rsp), %rcx
	leaq	-8(%rsp), %rsp
	call	L_shake128_squeezeblock$1
L_crypto_xkem_keypair_derand_jazz$66:
	leaq	8(%rsp), %rsp
	movq	72(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$59
L_crypto_xkem_keypair_derand_jazz$60:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$61
	movq	$168, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$59
L_crypto_xkem_keypair_derand_jazz$61:
	movzbw	10178(%rsp,%rcx), %dx
	movzbw	10179(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	movzbw	10180(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	addq	$3, %rcx
	cmpw	$3329, %dx
	jnb 	L_crypto_xkem_keypair_derand_jazz$65
	movw	%dx, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$65:
	cmpw	$3329, %di
	jnb 	L_crypto_xkem_keypair_derand_jazz$59
	cmpq	$256, %rax
	jnb 	L_crypto_xkem_keypair_derand_jazz$59
	movw	%di, 416(%rsp,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$64:
L_crypto_xkem_keypair_derand_jazz$63:
L_crypto_xkem_keypair_derand_jazz$62:
L_crypto_xkem_keypair_derand_jazz$59:
	cmpq	$166, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$60
L_crypto_xkem_keypair_derand_jazz$57:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$58
	movq	$0, %rax
	leaq	9632(%rsp), %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$55
L_crypto_xkem_keypair_derand_jazz$56:
	movw	416(%rsp,%rax,2), %dx
	movw	%dx, (%rcx,%rax,2)
	incq	%rax
L_crypto_xkem_keypair_derand_jazz$55:
	cmpq	$256, %rax
	jb  	L_crypto_xkem_keypair_derand_jazz$56
	movb	$0, %al
	leaq	928(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$54:
	leaq	176(%rsp), %rsp
	movb	$1, %al
	leaq	1440(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$53:
	leaq	176(%rsp), %rsp
	movb	$2, %al
	leaq	1952(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$52:
	leaq	176(%rsp), %rsp
	movb	$3, %al
	leaq	2464(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$51:
	leaq	176(%rsp), %rsp
	movb	$4, %al
	leaq	2976(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$50:
	leaq	176(%rsp), %rsp
	movb	$5, %al
	leaq	3488(%rsp), %rdx
	leaq	88(%rsp), %rcx
	leaq	-176(%rsp), %rsp
	call	L_poly_getnoise$1
L_crypto_xkem_keypair_derand_jazz$49:
	leaq	176(%rsp), %rsp
	leaq	928(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$48:
	leaq	1440(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$47:
	leaq	1952(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$46:
	leaq	2464(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$45:
	leaq	2976(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$44:
	leaq	3488(%rsp), %rcx
	call	L_poly_ntt$1
L_crypto_xkem_keypair_derand_jazz$43:
	leaq	4000(%rsp), %rdi
	leaq	5536(%rsp), %rcx
	leaq	928(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$42:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %rdi
	leaq	6048(%rsp), %rcx
	leaq	1440(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$41:
	leaq	16(%rsp), %rsp
	leaq	4000(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$40:
	leaq	416(%rsp), %rdi
	leaq	6560(%rsp), %rcx
	leaq	1952(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$39:
	leaq	16(%rsp), %rsp
	leaq	4000(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$38:
	leaq	4000(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$36
L_crypto_xkem_keypair_derand_jazz$37:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$36:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$37
	leaq	4000(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$35:
	leaq	4512(%rsp), %rdi
	leaq	7072(%rsp), %rcx
	leaq	928(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$34:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %rdi
	leaq	7584(%rsp), %rcx
	leaq	1440(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$33:
	leaq	16(%rsp), %rsp
	leaq	4512(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$32:
	leaq	416(%rsp), %rdi
	leaq	8096(%rsp), %rcx
	leaq	1952(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$31:
	leaq	16(%rsp), %rsp
	leaq	4512(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$30:
	leaq	4512(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$28
L_crypto_xkem_keypair_derand_jazz$29:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$28:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$29
	leaq	4512(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$27:
	leaq	5024(%rsp), %rdi
	leaq	8608(%rsp), %rcx
	leaq	928(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$26:
	leaq	16(%rsp), %rsp
	leaq	416(%rsp), %rdi
	leaq	9120(%rsp), %rcx
	leaq	1440(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$25:
	leaq	16(%rsp), %rsp
	leaq	5024(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$24:
	leaq	416(%rsp), %rdi
	leaq	9632(%rsp), %rcx
	leaq	1952(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	call	L_poly_basemul$1
L_crypto_xkem_keypair_derand_jazz$23:
	leaq	16(%rsp), %rsp
	leaq	5024(%rsp), %rcx
	leaq	416(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$22:
	leaq	5024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$20
L_crypto_xkem_keypair_derand_jazz$21:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$20:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$21
	leaq	5024(%rsp), %rax
	call	L_poly_frommont$1
L_crypto_xkem_keypair_derand_jazz$19:
	leaq	4000(%rsp), %rcx
	leaq	2464(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$18:
	leaq	4512(%rsp), %rcx
	leaq	2976(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$17:
	leaq	5024(%rsp), %rcx
	leaq	3488(%rsp), %rsi
	call	L_poly_add2$1
L_crypto_xkem_keypair_derand_jazz$16:
	leaq	4000(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$14
L_crypto_xkem_keypair_derand_jazz$15:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$14:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$15
	leaq	4512(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$12
L_crypto_xkem_keypair_derand_jazz$13:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$12:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$13
	leaq	5024(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_crypto_xkem_keypair_derand_jazz$10
L_crypto_xkem_keypair_derand_jazz$11:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	incq	%rcx
L_crypto_xkem_keypair_derand_jazz$10:
	cmpq	$256, %rcx
	jb  	L_crypto_xkem_keypair_derand_jazz$11
	movq	56(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	928(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$9:
	addq	$384, %rdx
	leaq	1440(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$8:
	addq	$384, %rdx
	leaq	1952(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$7:
	movq	%rax, %rdx
	leaq	4000(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$6:
	addq	$384, %rdx
	leaq	4512(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$5:
	addq	$384, %rdx
	leaq	5024(%rsp), %rcx
	call	L_poly_tobytes$1
L_crypto_xkem_keypair_derand_jazz$4:
	addq	$1152, %rax
	movq	120(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	128(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	136(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	144(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	48(%rsp), %rax
	addq	$1152, %rax
	movq	40(%rsp), %rcx
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
	addq	$2336, 48(%rsp)
	movq	40(%rsp), %r8
	movq	$1184, %rax
	leaq	120(%rsp), %rcx
	leaq	-232(%rsp), %rsp
	call	L_isha3_256$1
L_crypto_xkem_keypair_derand_jazz$3:
	leaq	232(%rsp), %rsp
	movq	48(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	128(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	136(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	144(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rsp), %rcx
	leaq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	lfence
	movq	$0, %rdx
	leaq	1184(%rax), %rax
	leaq	64(%rcx), %rcx
	call	Lxwing_x25519_base_p_rp$1
L_crypto_xkem_keypair_derand_jazz$2:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
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
	movb	glob_data + 704(%rip), %dil
	movb	%dil, 8(%rsp)
	movb	glob_data + 705(%rip), %dil
	movb	%dil, 9(%rsp)
	movb	glob_data + 706(%rip), %dil
	movb	%dil, 10(%rsp)
	movb	glob_data + 707(%rip), %dil
	movb	%dil, 11(%rsp)
	movb	glob_data + 708(%rip), %dil
	movb	%dil, 12(%rsp)
	movb	glob_data + 709(%rip), %dil
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
	movq	8(%rax), %r9
	movq	16(%rax), %r10
	movq	24(%rax), %rsi
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %r8
	movq	24(%rdx), %rbx
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Lxwing_x25519_rp_p_p$2:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%r11, 16(%rax)
	movq	%rcx, 24(%rax)
	ret
Lxwing_x25519_rp_rp_p$1:
	movq	%rcx, %mm0
	movq	(%rax), %rdi
	movq	8(%rax), %r9
	movq	16(%rax), %r10
	movq	24(%rax), %rsi
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %r8
	movq	24(%rdx), %rbx
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Lxwing_x25519_rp_rp_p$2:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%r11, 16(%rax)
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
	movq	%r8, (%rax)
	movq	%r10, 8(%rax)
	movq	%rbx, 16(%rax)
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
	movq	8(%rsi), %r9
	movq	16(%rsi), %r10
	movq	24(%rsi), %rsi
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	16(%rdx), %r8
	movq	24(%rdx), %rbx
	leaq	-328(%rsp), %rsp
	call	L_curve25519_ref4$1
Ljade_scalarmult_curve25519_amd64_ref4$1:
	leaq	328(%rsp), %rsp
	movq	%mm0, %rax
	movq	%r8, (%rax)
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
	movq	%r8, %r11
	movq	%r8, 128(%rsp)
	movq	%r8, 72(%rsp)
	movq	%r8, %rbx
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
	movq	%rdi, %rbp
	movq	%r9, %r12
	movq	%r11, %r13
	movq	%rbx, %r14
	xorq	%rdx, %rbp
	xorq	%rsi, %r12
	xorq	%r8, %r13
	xorq	%r10, %r14
	andq	%rcx, %rbp
	andq	%rcx, %r12
	andq	%rcx, %r13
	andq	%rcx, %r14
	xorq	%rbp, %rdi
	xorq	%rbp, %rdx
	movq	%rdx, 112(%rsp)
	xorq	%r12, %r9
	xorq	%r12, %rsi
	movq	%rsi, 120(%rsp)
	xorq	%r13, %r11
	xorq	%r13, %r8
	movq	%r8, 128(%rsp)
	xorq	%r14, %rbx
	xorq	%r14, %r10
	movq	%r10, 136(%rsp)
	movq	80(%rsp), %r8
	movq	88(%rsp), %r10
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	48(%rsp), %rbp
	movq	%r8, %r12
	xorq	%rbp, %r12
	andq	%rcx, %r12
	xorq	%r12, %rbp
	xorq	%r12, %r8
	movq	%rbp, 48(%rsp)
	movq	%r8, 80(%rsp)
	movq	56(%rsp), %r8
	movq	%r10, %rbp
	xorq	%r8, %rbp
	andq	%rcx, %rbp
	xorq	%rbp, %r8
	xorq	%rbp, %r10
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
	sbbq	%r11, %rsi
	sbbq	%rbx, %r8
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
	adcq	64(%rsp), %r11
	adcq	72(%rsp), %rbx
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rdi
	adcq	$0, %r9
	adcq	$0, %r11
	adcq	$0, %rbx
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rdi
	movq	%rdi, 208(%rsp)
	movq	%r9, 216(%rsp)
	movq	%r11, 224(%rsp)
	movq	%rbx, 232(%rsp)
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
	movq	$0, %r11
	movq	$0, %rcx
	movq	$0, %rsi
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %rdi
	movq	208(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %r12
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r11
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rcx
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %rsi
	movq	216(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
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
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %r8
	movq	224(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
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
	adcq	%rdx, %rbx
	movq	232(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rdi
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r10
	movq	%r8, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r8
	movq	%rbx, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rbx
	movq	%rdi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %rsi
	adcq	%r12, %r10
	adcq	%r11, %r8
	adcq	%rcx, %rbx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 240(%rsp)
	movq	%r10, 248(%rsp)
	movq	%r8, 256(%rsp)
	movq	%rbx, 264(%rsp)
	movq	$0, %rsi
	movq	$0, %rcx
	movq	$0, %r8
	movq	$0, %r11
	movq	$0, %r12
	movq	$0, %rbx
	movq	272(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %rbp
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %r11
	movq	288(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
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
	adcq	%rdx, %r12
	movq	296(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%rdx, %rbx
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r11
	movq	%r12, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r12
	movq	%rbx, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rdi, %r8
	adcq	%rbp, %r10
	adcq	%rsi, %r11
	adcq	%rcx, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %r11
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%r11, 288(%rsp)
	movq	%r12, 296(%rsp)
	movq	$0, %r12
	movq	$0, %rcx
	movq	216(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %r8
	movq	%rdx, %rbp
	movq	224(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %r11
	movq	%rdx, %rsi
	movq	232(%rsp), %rax
	mulq	224(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rdi
	movq	224(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r11
	adcq	%rcx, %rsi
	movq	232(%rsp), %rax
	mulq	216(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rbx
	adcq	%rcx, %rdi
	movq	232(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %rsi
	adcq	%rcx, %rbx
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	addq	%r8, %r8
	adcq	%rbp, %rbp
	adcq	%r11, %r11
	adcq	%rsi, %rsi
	adcq	%rbx, %rbx
	adcq	%rdi, %rdi
	adcq	%r12, %r12
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
	addq	%r9, %r8
	adcq	%r10, %rbp
	adcq	%r13, %r11
	adcq	%rax, %rsi
	adcq	%rdx, %rbx
	adcq	$0, %rdi
	adcq	$0, %r12
	movq	232(%rsp), %rax
	mulq	232(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %r12
	movq	$38, %r9
	movq	%rsi, %rax
	mulq	%r9
	movq	%rax, %rsi
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
	addq	%rcx, %rsi
	adcq	%r8, %r10
	adcq	%rbp, %rbx
	adcq	%r11, %rdi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rdi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%rsi, 208(%rsp)
	movq	%r10, 216(%rsp)
	movq	%rbx, 224(%rsp)
	movq	%rdi, 232(%rsp)
	movq	$0, %r11
	movq	$0, %rcx
	movq	184(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	192(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r8
	movq	200(%rsp), %rax
	mulq	192(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rbx
	adcq	%rdx, %rbp
	adcq	%rcx, %r8
	movq	200(%rsp), %rax
	mulq	184(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	%rcx, %rsi
	movq	200(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r8
	adcq	%rcx, %rdi
	adcq	%rcx, %rsi
	adcq	%rcx, %r11
	addq	%r12, %r12
	adcq	%rbx, %rbx
	adcq	%rbp, %rbp
	adcq	%r8, %r8
	adcq	%rdi, %rdi
	adcq	%rsi, %rsi
	adcq	%r11, %r11
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
	addq	%r9, %r12
	adcq	%r10, %rbx
	adcq	%r13, %rbp
	adcq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	$0, %rsi
	adcq	$0, %r11
	movq	200(%rsp), %rax
	mulq	200(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %r11
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rdi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rdi
	movq	%rsi, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rsi
	movq	%r11, %rax
	adcq	%rdx, %rsi
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r12, %r10
	adcq	%rbx, %rdi
	adcq	%rbp, %rsi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rdi
	adcq	%rcx, %rsi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 176(%rsp)
	movq	%r10, 184(%rsp)
	movq	%rdi, 192(%rsp)
	movq	%rsi, 200(%rsp)
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
	movq	$0, %rbp
	movq	$0, %r12
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %rcx
	movq	$0, %r11
	movq	208(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %r12
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r8
	movq	216(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rbx
	movq	224(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
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
	adcq	%rdx, %rcx
	movq	232(%rsp), %r9
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
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
	movq	%rcx, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rcx
	movq	%r11, %rax
	adcq	%rdx, %rcx
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rdi, %r8
	adcq	%rsi, %r10
	adcq	%rbp, %rbx
	adcq	%r12, %rcx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rdx
	addq	%rax, %r8
	adcq	%rdx, %r10
	adcq	%rdx, %rbx
	adcq	%rdx, %rcx
	adcq	%rdx, %rdx
	imulq	$38, %rdx, %rax
	addq	%rax, %r8
	movq	%r8, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rcx, 72(%rsp)
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
	movq	$0, %rbp
	movq	$0, %rcx
	movq	280(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %r11
	movq	%rdx, %rbx
	movq	288(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %r8
	movq	296(%rsp), %rax
	mulq	288(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %r12
	movq	288(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %rbx
	adcq	%rdx, %rdi
	adcq	%rcx, %r8
	movq	296(%rsp), %rax
	mulq	280(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	%rcx, %r12
	movq	296(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %r8
	adcq	%rcx, %rsi
	adcq	%rcx, %r12
	adcq	%rcx, %rbp
	addq	%r11, %r11
	adcq	%rbx, %rbx
	adcq	%rdi, %rdi
	adcq	%r8, %r8
	adcq	%rsi, %rsi
	adcq	%r12, %r12
	adcq	%rbp, %rbp
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
	adcq	%r10, %rbx
	adcq	%r13, %rdi
	adcq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	$0, %r12
	adcq	$0, %rbp
	movq	296(%rsp), %rax
	mulq	296(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %rbp
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
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
	movq	%rbp, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r11, %r10
	adcq	%rbx, %rsi
	adcq	%rdi, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rsi
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rsi, 288(%rsp)
	movq	%r12, 296(%rsp)
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
	movq	%rax, %rsi
	movq	%rdx, %r11
	movq	320(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r8
	movq	328(%rsp), %rax
	mulq	320(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rdi
	movq	320(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %rbp
	adcq	%rcx, %r8
	movq	328(%rsp), %rax
	mulq	312(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	%rcx, %rdi
	movq	328(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	addq	%rsi, %rsi
	adcq	%r11, %r11
	adcq	%rbp, %rbp
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	adcq	%rdi, %rdi
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
	addq	%r9, %rsi
	adcq	%r10, %r11
	adcq	%r13, %rbp
	adcq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	$0, %rdi
	adcq	$0, %r12
	movq	328(%rsp), %rax
	mulq	328(%rsp)
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
	adcq	%r11, %rbx
	adcq	%rbp, %rdi
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
	movq	%r8, 80(%rsp)
	movq	%r10, 88(%rsp)
	movq	%rbx, 96(%rsp)
	movq	%rdi, 104(%rsp)
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
	movq	$0, %rbp
	movq	$0, %rcx
	movq	$0, %r8
	movq	$0, %rdi
	movq	$0, %rbx
	movq	144(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r12
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r11
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rbp
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rcx
	movq	152(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
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
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %r8
	movq	160(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
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
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rdi
	movq	168(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
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
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	adcq	%rdx, %rbx
	movq	$38, %r9
	movq	%rcx, %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %r10
	movq	%r8, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %r8
	movq	%rdi, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rdi
	movq	%rbx, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rsi, %rcx
	adcq	%r12, %r10
	adcq	%r11, %r8
	adcq	%rbp, %rdi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rdx
	addq	%rax, %rcx
	adcq	%rdx, %r10
	adcq	%rdx, %r8
	adcq	%rdx, %rdi
	adcq	%rdx, %rdx
	imulq	$38, %rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%r10, 120(%rsp)
	movq	%r8, 128(%rsp)
	movq	%rdi, 136(%rsp)
	movq	$0, %rsi
	movq	$0, %rcx
	movq	$0, %rdi
	movq	$0, %r11
	movq	$0, %rbx
	movq	$0, %r12
	movq	176(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	movq	%rax, %r10
	movq	%rdx, %rbp
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	256(%rsp), %rax
	mulq	%r8
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %rcx
	adcq	%rdx, %rdi
	movq	184(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %rbp
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
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r9, %rcx
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r9, %rdi
	adcq	%rdx, %r11
	movq	192(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	248(%rsp), %rax
	mulq	%r8
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r9, %rcx
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
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r9, %r11
	adcq	%rdx, %rbx
	movq	200(%rsp), %r8
	movq	240(%rsp), %rax
	mulq	%r8
	addq	%rax, %rcx
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
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r9, %r11
	movq	$0, %r9
	adcq	%rdx, %r9
	movq	264(%rsp), %rax
	mulq	%r8
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r9, %rbx
	adcq	%rdx, %r12
	movq	$38, %r8
	movq	%rdi, %rax
	mulq	%r8
	movq	%rax, %rdi
	movq	%rdx, %r9
	movq	%r11, %rax
	mulq	%r8
	addq	%rax, %r9
	movq	$0, %r11
	movq	%rbx, %rax
	adcq	%rdx, %r11
	mulq	%r8
	addq	%rax, %r11
	movq	$0, %rbx
	movq	%r12, %rax
	adcq	%rdx, %rbx
	mulq	%r8
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r10, %rdi
	adcq	%rbp, %r9
	adcq	%rsi, %r11
	adcq	%rcx, %rbx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rdi
	adcq	%rcx, %r9
	adcq	%rcx, %r11
	adcq	%rcx, %rbx
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rdi
	movq	%mm1, %rcx
	cmpq	$0, %rcx
	jnbe	L_curve25519_ref4_base$27
	movq	%rdi, 112(%rsp)
	movq	%r9, 120(%rsp)
	movq	%r11, 128(%rsp)
	movq	%rbx, 136(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	80(%rsp), %r11
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
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4_base$25:
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4_base$24:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$23:
	leaq	80(%rsp), %rsi
	leaq	144(%rsp), %rdi
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
	leaq	112(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4_base$21:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
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
	leaq	112(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4_base$19:
	movl	$4, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$18:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$17:
	movl	$10, %r12d
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$16:
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$15:
	movl	$20, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$14:
	leaq	112(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$13:
	movl	$10, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$12:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$11:
	movl	$50, %r12d
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$10:
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$9:
	movl	$100, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$8:
	leaq	112(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$7:
	movl	$50, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$6:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$5:
	movl	$4, %r12d
	leaq	144(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4_base$4:
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4_base$3:
	leaq	144(%rsp), %rsi
	leaq	80(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4_base$2:
	movq	$0, %r11
	movq	$0, %r12
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %rbp
	movq	$0, %rdi
	movq	48(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %rcx
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r11
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %r12
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
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
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
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
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
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
	adcq	%rdx, %rbp
	movq	72(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
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
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
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
	movq	%rbp, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rbp
	movq	%rdi, %rax
	adcq	%rdx, %rbp
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rsi, %r8
	adcq	%rcx, %r10
	adcq	%r11, %rbx
	adcq	%r12, %rbp
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rbp
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	leaq	(%rbp,%rbp), %rax
	sarq	$63, %rbp
	shrq	$1, %rax
	andq	$19, %rbp
	addq	$19, %rbp
	addq	%rbp, %r8
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
L_curve25519_ref4$1:
	movq	%rdi, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rsi, 40(%rsp)
	andb	$248, 16(%rsp)
	andb	$127, 47(%rsp)
	orb 	$64, 47(%rsp)
	movq	$9223372036854775807, %rdx
	andq	%rdx, %rbx
	xorq	%rdx, %rdx
	movq	$1, 48(%rsp)
	movq	$0, %rsi
	movq	%rax, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rbx, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rdx, %r9
	movq	%rdx, 120(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdx, %r11
	movq	%rdx, 128(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rdx, %rdi
	movq	%rdx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movq	%r8, 160(%rsp)
	movq	%rbx, 168(%rsp)
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
	movq	120(%rsp), %r8
	movq	128(%rsp), %r10
	movq	136(%rsp), %rbx
	movq	%rsi, %rbp
	movq	%r9, %r12
	movq	%r11, %r13
	movq	%rdi, %r14
	xorq	%rdx, %rbp
	xorq	%r8, %r12
	xorq	%r10, %r13
	xorq	%rbx, %r14
	andq	%rcx, %rbp
	andq	%rcx, %r12
	andq	%rcx, %r13
	andq	%rcx, %r14
	xorq	%rbp, %rsi
	xorq	%rbp, %rdx
	movq	%rdx, 112(%rsp)
	xorq	%r12, %r9
	xorq	%r12, %r8
	movq	%r8, 120(%rsp)
	xorq	%r13, %r11
	xorq	%r13, %r10
	movq	%r10, 128(%rsp)
	xorq	%r14, %rdi
	xorq	%r14, %rbx
	movq	%rbx, 136(%rsp)
	movq	80(%rsp), %r10
	movq	88(%rsp), %rbx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %r8
	movq	48(%rsp), %rbp
	movq	%r10, %r12
	xorq	%rbp, %r12
	andq	%rcx, %r12
	xorq	%r12, %rbp
	xorq	%r12, %r10
	movq	%rbp, 48(%rsp)
	movq	%r10, 80(%rsp)
	movq	56(%rsp), %r10
	movq	%rbx, %rbp
	xorq	%r10, %rbp
	andq	%rcx, %rbp
	xorq	%rbp, %r10
	xorq	%rbp, %rbx
	movq	%r10, 56(%rsp)
	movq	%rbx, 88(%rsp)
	movq	64(%rsp), %r10
	movq	%rdx, %rbx
	xorq	%r10, %rbx
	andq	%rcx, %rbx
	xorq	%rbx, %r10
	xorq	%rbx, %rdx
	movq	%r10, 64(%rsp)
	movq	%rdx, 96(%rsp)
	movq	72(%rsp), %rdx
	movq	%r8, %r10
	xorq	%rdx, %r10
	andq	%rcx, %r10
	xorq	%r10, %rdx
	xorq	%r10, %r8
	movq	%rdx, 72(%rsp)
	movq	%r8, 104(%rsp)
	movq	%rax, 8(%rsp)
	xorq	%rax, %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	72(%rsp), %r10
	subq	%rsi, %rcx
	sbbq	%r9, %rdx
	sbbq	%r11, %r8
	sbbq	%rdi, %r10
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	sbbq	$0, %rdx
	sbbq	$0, %r8
	sbbq	$0, %r10
	sbbq	%rax, %rax
	andq	$38, %rax
	subq	%rax, %rcx
	movq	%rcx, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%r8, 192(%rsp)
	movq	%r10, 200(%rsp)
	xorq	%rax, %rax
	addq	48(%rsp), %rsi
	adcq	56(%rsp), %r9
	adcq	64(%rsp), %r11
	adcq	72(%rsp), %rdi
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	adcq	$0, %r9
	adcq	$0, %r11
	adcq	$0, %rdi
	sbbq	%rax, %rax
	andq	$38, %rax
	addq	%rax, %rsi
	movq	%rsi, 208(%rsp)
	movq	%r9, 216(%rsp)
	movq	%r11, 224(%rsp)
	movq	%rdi, 232(%rsp)
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
	movq	$0, %rsi
	movq	$0, %rbp
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %r11
	movq	$0, %rcx
	movq	208(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %r12
	movq	%rdx, %rdi
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %r8
	movq	216(%rsp), %r9
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
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rbx
	movq	224(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %r11
	movq	232(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
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
	adcq	%rdx, %rcx
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
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
	movq	%rcx, %rax
	adcq	%rdx, %r11
	mulq	%r9
	addq	%rax, %r11
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r12, %r8
	adcq	%rdi, %r10
	adcq	%rsi, %rbx
	adcq	%rbp, %r11
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %r11
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 240(%rsp)
	movq	%r10, 248(%rsp)
	movq	%rbx, 256(%rsp)
	movq	%r11, 264(%rsp)
	movq	$0, %rsi
	movq	$0, %r12
	movq	$0, %rcx
	movq	$0, %r11
	movq	$0, %r8
	movq	$0, %rdi
	movq	272(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %r12
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rcx
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
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %r11
	movq	288(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
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
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %r8
	movq	296(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
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
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rdi
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
	movq	%rdi, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbx, %rcx
	adcq	%rbp, %r10
	adcq	%rsi, %r11
	adcq	%r12, %r8
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
	movq	%rcx, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%r11, 288(%rsp)
	movq	%r8, 296(%rsp)
	movq	$0, %r12
	movq	$0, %rcx
	movq	216(%rsp), %rax
	mulq	208(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %rsi
	movq	224(%rsp), %rax
	mulq	216(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rdi
	movq	232(%rsp), %rax
	mulq	224(%rsp)
	movq	%rax, %r11
	movq	%rdx, %r8
	movq	224(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rbx
	adcq	%rcx, %rdi
	movq	232(%rsp), %rax
	mulq	216(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %r11
	adcq	%rcx, %r8
	movq	232(%rsp), %rax
	mulq	208(%rsp)
	addq	%rax, %rbx
	adcq	%rdx, %rdi
	adcq	%rcx, %r11
	adcq	%rcx, %r8
	adcq	%rcx, %r12
	addq	%rbp, %rbp
	adcq	%rsi, %rsi
	adcq	%rbx, %rbx
	adcq	%rdi, %rdi
	adcq	%r11, %r11
	adcq	%r8, %r8
	adcq	%r12, %r12
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
	adcq	%r10, %rsi
	adcq	%r13, %rbx
	adcq	%rax, %rdi
	adcq	%rdx, %r11
	adcq	$0, %r8
	adcq	$0, %r12
	movq	232(%rsp), %rax
	mulq	232(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %r12
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
	movq	%r12, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %rdi
	adcq	%rbp, %r10
	adcq	%rsi, %r11
	adcq	%rbx, %r8
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
	movq	%rdi, 208(%rsp)
	movq	%r10, 216(%rsp)
	movq	%r11, 224(%rsp)
	movq	%r8, 232(%rsp)
	movq	$0, %r11
	movq	$0, %rcx
	movq	184(%rsp), %rax
	mulq	176(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	184(%rsp)
	movq	%rax, %rbp
	movq	%rdx, %r8
	movq	200(%rsp), %rax
	mulq	192(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %r12
	movq	192(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	adcq	%rcx, %r8
	movq	200(%rsp), %rax
	mulq	184(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	%rcx, %r12
	movq	200(%rsp), %rax
	mulq	176(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %r8
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	adcq	%rcx, %r11
	addq	%rbx, %rbx
	adcq	%rsi, %rsi
	adcq	%rbp, %rbp
	adcq	%r8, %r8
	adcq	%rdi, %rdi
	adcq	%r12, %r12
	adcq	%r11, %r11
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
	addq	%r9, %rbx
	adcq	%r10, %rsi
	adcq	%r13, %rbp
	adcq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	$0, %r12
	adcq	$0, %r11
	movq	200(%rsp), %rax
	mulq	200(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %r11
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rdi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rdi
	movq	%r12, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r12
	movq	%r11, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rbx, %r10
	adcq	%rsi, %rdi
	adcq	%rbp, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 176(%rsp)
	movq	%r10, 184(%rsp)
	movq	%rdi, 192(%rsp)
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
	movq	$0, %rsi
	movq	$0, %rcx
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %r12
	movq	$0, %r11
	movq	208(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	movq	%rax, %rdi
	movq	%rdx, %rbp
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	movq	192(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r8
	movq	216(%rsp), %r9
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
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	200(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rbx
	movq	224(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	184(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
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
	movq	232(%rsp), %r9
	movq	176(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rdi, %r8
	adcq	%rbp, %r10
	adcq	%rsi, %rbx
	adcq	%rcx, %r12
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
	movq	%r8, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%r12, 72(%rsp)
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
	movq	$0, %r12
	movq	$0, %rcx
	movq	280(%rsp), %rax
	mulq	272(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	288(%rsp), %rax
	mulq	280(%rsp)
	movq	%rax, %r11
	movq	%rdx, %r8
	movq	296(%rsp), %rax
	mulq	288(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	288(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %rdi
	adcq	%rdx, %r11
	adcq	%rcx, %r8
	movq	296(%rsp), %rax
	mulq	280(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	%rcx, %rbp
	movq	296(%rsp), %rax
	mulq	272(%rsp)
	addq	%rax, %r11
	adcq	%rdx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %rbp
	adcq	%rcx, %r12
	addq	%rsi, %rsi
	adcq	%rdi, %rdi
	adcq	%r11, %r11
	adcq	%r8, %r8
	adcq	%rbx, %rbx
	adcq	%rbp, %rbp
	adcq	%r12, %r12
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
	addq	%r9, %rsi
	adcq	%r10, %rdi
	adcq	%r13, %r11
	adcq	%rax, %r8
	adcq	%rdx, %rbx
	adcq	$0, %rbp
	adcq	$0, %r12
	movq	296(%rsp), %rax
	mulq	296(%rsp)
	addq	%rax, %rbp
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
	movq	%rbp, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rbp
	movq	%r12, %rax
	adcq	%rdx, %rbp
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rsi, %r10
	adcq	%rdi, %rbx
	adcq	%r11, %rbp
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rbx
	adcq	%rcx, %rbp
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 272(%rsp)
	movq	%r10, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movq	%rbp, 296(%rsp)
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
	movq	$0, %r11
	movq	$0, %rcx
	movq	312(%rsp), %rax
	mulq	304(%rsp)
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	320(%rsp), %rax
	mulq	312(%rsp)
	movq	%rax, %rsi
	movq	%rdx, %r8
	movq	328(%rsp), %rax
	mulq	320(%rsp)
	movq	%rax, %rdi
	movq	%rdx, %r12
	movq	320(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rbp
	adcq	%rdx, %rsi
	adcq	%rcx, %r8
	movq	328(%rsp), %rax
	mulq	312(%rsp)
	addq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	%rcx, %r12
	movq	328(%rsp), %rax
	mulq	304(%rsp)
	addq	%rax, %rsi
	adcq	%rdx, %r8
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	adcq	%rcx, %r11
	addq	%rbx, %rbx
	adcq	%rbp, %rbp
	adcq	%rsi, %rsi
	adcq	%r8, %r8
	adcq	%rdi, %rdi
	adcq	%r12, %r12
	adcq	%r11, %r11
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
	addq	%r9, %rbx
	adcq	%r10, %rbp
	adcq	%r13, %rsi
	adcq	%rax, %r8
	adcq	%rdx, %rdi
	adcq	$0, %r12
	adcq	$0, %r11
	movq	328(%rsp), %rax
	mulq	328(%rsp)
	addq	%rax, %r12
	adcq	%rdx, %r11
	movq	$38, %r9
	movq	%r8, %rax
	mulq	%r9
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	%rdi, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rdi
	movq	%r12, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %r12
	movq	%r11, %rax
	adcq	%rdx, %r12
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%rbx, %r10
	adcq	%rbp, %rdi
	adcq	%rsi, %r12
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r8
	adcq	%rcx, %r10
	adcq	%rcx, %rdi
	adcq	%rcx, %r12
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r8
	movq	%r8, 80(%rsp)
	movq	%r10, 88(%rsp)
	movq	%rdi, 96(%rsp)
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
	movq	$0, %rbp
	movq	$0, %rcx
	movq	$0, %rbx
	movq	$0, %r8
	movq	$0, %rdi
	movq	144(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	movq	%rax, %r12
	movq	%rdx, %r11
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	%rdx, %rsi
	movq	288(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %rbp
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rcx
	movq	152(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
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
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r10, %rcx
	adcq	%rdx, %rbx
	movq	160(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	280(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r10, %rbp
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %r8
	movq	168(%rsp), %r9
	movq	272(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbp
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	296(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %rdi
	movq	$38, %r9
	movq	%rcx, %rax
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %r10
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r10
	movq	$0, %rbx
	movq	%r8, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %r8
	movq	%rdi, %rax
	adcq	%rdx, %r8
	mulq	%r9
	addq	%rax, %r8
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r12, %rcx
	adcq	%r11, %r10
	adcq	%rsi, %rbx
	adcq	%rbp, %r8
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rdx
	addq	%rax, %rcx
	adcq	%rdx, %r10
	adcq	%rdx, %rbx
	adcq	%rdx, %r8
	adcq	%rdx, %rdx
	imulq	$38, %rdx, %rax
	addq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%r10, 120(%rsp)
	movq	%rbx, 128(%rsp)
	movq	%r8, 136(%rsp)
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %rsi
	movq	$0, %r11
	movq	$0, %rdi
	movq	$0, %r12
	movq	176(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %rcx
	movq	248(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r8
	movq	256(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	%rdx, %rbx
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	%rdx, %rsi
	movq	184(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	adcq	%rdx, %r11
	movq	192(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
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
	addq	%rax, %rsi
	adcq	$0, %rdx
	addq	%r10, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %rdi
	movq	200(%rsp), %r9
	movq	240(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
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
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	264(%rsp), %rax
	mulq	%r9
	addq	%rax, %rdi
	adcq	$0, %rdx
	addq	%r10, %rdi
	adcq	%rdx, %r12
	movq	$38, %r10
	movq	%rsi, %rax
	mulq	%r10
	movq	%rax, %rsi
	movq	%rdx, %r9
	movq	%r11, %rax
	mulq	%r10
	addq	%rax, %r9
	movq	$0, %r11
	movq	%rdi, %rax
	adcq	%rdx, %r11
	mulq	%r10
	addq	%rax, %r11
	movq	$0, %rdi
	movq	%r12, %rax
	adcq	%rdx, %rdi
	mulq	%r10
	addq	%rax, %rdi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %rsi
	adcq	%rcx, %r9
	adcq	%r8, %r11
	adcq	%rbx, %rdi
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %rsi
	adcq	%rcx, %r9
	adcq	%rcx, %r11
	adcq	%rcx, %rdi
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %rsi
	movq	%mm1, %rcx
	cmpq	$0, %rcx
	jnbe	L_curve25519_ref4$27
	movq	%rsi, 112(%rsp)
	movq	%r9, 120(%rsp)
	movq	%r11, 128(%rsp)
	movq	%rdi, 136(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	80(%rsp), %r11
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
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4$25:
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4$24:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$23:
	leaq	80(%rsp), %rsi
	leaq	144(%rsp), %rdi
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
	leaq	112(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4$21:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
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
	leaq	112(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4$19:
	movl	$4, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$18:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$17:
	movl	$10, %r12d
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$16:
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$15:
	movl	$20, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$14:
	leaq	112(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$13:
	movl	$10, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$12:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$11:
	movl	$50, %r12d
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$10:
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$9:
	movl	$100, %r12d
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	16(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$8:
	leaq	112(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$7:
	movl	$50, %r12d
	leaq	112(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$6:
	leaq	144(%rsp), %rsi
	leaq	112(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$5:
	movl	$4, %r12d
	leaq	144(%rsp), %r11
	call	L_it_sqr4_p$1
L_curve25519_ref4$4:
	leaq	144(%rsp), %r11
	call	L_sqr4_p$1
L_curve25519_ref4$3:
	leaq	144(%rsp), %rsi
	leaq	80(%rsp), %rdi
	call	L_mul4_pp$1
L_curve25519_ref4$2:
	movq	$0, %rsi
	movq	$0, %r12
	movq	$0, %r8
	movq	$0, %r11
	movq	$0, %rbx
	movq	$0, %rdi
	movq	48(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %rcx
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %rsi
	movq	160(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	adcq	%rdx, %r12
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r8
	movq	56(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rcx
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
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r10, %r8
	adcq	%rdx, %r11
	movq	64(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %rsi
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	152(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	$0, %rdx
	addq	%r10, %r12
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
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	adcq	%rdx, %rbx
	movq	72(%rsp), %r9
	movq	144(%rsp), %rax
	mulq	%r9
	addq	%rax, %r12
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
	addq	%rax, %r11
	adcq	$0, %rdx
	addq	%r10, %r11
	movq	$0, %r10
	adcq	%rdx, %r10
	movq	168(%rsp), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r10, %rbx
	adcq	%rdx, %rdi
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
	movq	%rdi, %rax
	adcq	%rdx, %rbx
	mulq	%r9
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rbp, %r8
	adcq	%rcx, %r10
	adcq	%rsi, %r11
	adcq	%r12, %rbx
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
	leaq	(%rbx,%rbx), %rax
	sarq	$63, %rbx
	shrq	$1, %rax
	andq	$19, %rbx
	addq	$19, %rbx
	addq	%rbx, %r8
	adcq	$0, %r10
	adcq	$0, %r11
	adcq	$0, %rax
	leaq	(%rax,%rax), %rcx
	sarq	$63, %rax
	shrq	$1, %rcx
	notq	%rax
	andq	$19, %rax
	subq	%rax, %r8
	sbbq	$0, %r10
	sbbq	$0, %r11
	sbbq	$0, %rcx
	ret
L_it_sqr4_p$1:
L_it_sqr4_p$2:
	call	L_sqr4_p$1
L_it_sqr4_p$3:
	decl	%r12d
	jne 	L_it_sqr4_p$2
	ret
L_sqr4_p$1:
	movq	$0, %r13
	movq	$0, %rcx
	movq	8(%r11), %rax
	mulq	(%r11)
	movq	%rax, %r15
	movq	%rdx, %rbx
	movq	16(%r11), %rax
	mulq	8(%r11)
	movq	%rax, %rbp
	movq	%rdx, %r8
	movq	24(%r11), %rax
	mulq	16(%r11)
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	16(%r11), %rax
	mulq	(%r11)
	addq	%rax, %rbx
	adcq	%rdx, %rbp
	adcq	%rcx, %r8
	movq	24(%r11), %rax
	mulq	8(%r11)
	addq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	%rcx, %rdi
	movq	24(%r11), %rax
	mulq	(%r11)
	addq	%rax, %rbp
	adcq	%rdx, %r8
	adcq	%rcx, %rsi
	adcq	%rcx, %rdi
	adcq	%rcx, %r13
	addq	%r15, %r15
	adcq	%rbx, %rbx
	adcq	%rbp, %rbp
	adcq	%r8, %r8
	adcq	%rsi, %rsi
	adcq	%rdi, %rdi
	adcq	%r13, %r13
	movq	(%r11), %rax
	mulq	(%r11)
	movq	%rax, %rcx
	movq	%rdx, %r9
	movq	8(%r11), %rax
	mulq	8(%r11)
	movq	%rax, %r10
	movq	%rdx, %r14
	movq	16(%r11), %rax
	mulq	16(%r11)
	addq	%r9, %r15
	adcq	%r10, %rbx
	adcq	%r14, %rbp
	adcq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	$0, %rdi
	adcq	$0, %r13
	movq	24(%r11), %rax
	mulq	24(%r11)
	addq	%rax, %rdi
	adcq	%rdx, %r13
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
	movq	%r13, %rax
	adcq	%rdx, %rdi
	mulq	%r9
	addq	%rax, %rdi
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%rcx, %r8
	adcq	%r15, %r10
	adcq	%rbx, %rsi
	adcq	%rbp, %rdi
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
	movq	%r8, (%r11)
	movq	%r10, 8(%r11)
	movq	%rsi, 16(%r11)
	movq	%rdi, 24(%r11)
	ret
L_mul4_pp$1:
	movq	$0, %rbp
	movq	$0, %rcx
	movq	$0, %r10
	movq	$0, %r8
	movq	$0, %rbx
	movq	$0, %r14
	movq	(%rsi), %r9
	movq	(%rdi), %rax
	mulq	%r9
	movq	%rax, %r11
	movq	%rdx, %r12
	movq	8(%rdi), %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %rbp
	movq	16(%rdi), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	%rdx, %rcx
	movq	24(%rdi), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	%rdx, %r10
	movq	8(%rsi), %r9
	movq	(%rdi), %rax
	mulq	%r9
	addq	%rax, %r12
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rdi), %rax
	mulq	%r9
	addq	%rax, %rbp
	adcq	$0, %rdx
	addq	%r13, %rbp
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rdi), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r13, %rcx
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rdi), %rax
	mulq	%r9
	addq	%rax, %r10
	adcq	$0, %rdx
	addq	%r13, %r10
	adcq	%rdx, %r8
	movq	16(%rsi), %r9
	movq	(%rdi), %rax
	mulq	%r9
	addq	%rax, %rbp
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rdi), %rax
	mulq	%r9
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%r13, %rcx
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rdi), %rax
	mulq	%r9
	addq	%rax, %r10
	adcq	$0, %rdx
	addq	%r13, %r10
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rdi), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r13, %r8
	adcq	%rdx, %rbx
	movq	24(%rsi), %r9
	movq	(%rdi), %rax
	mulq	%r9
	addq	%rax, %rcx
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	8(%rdi), %rax
	mulq	%r9
	addq	%rax, %r10
	adcq	$0, %rdx
	addq	%r13, %r10
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	16(%rdi), %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	$0, %rdx
	addq	%r13, %r8
	movq	$0, %r13
	adcq	%rdx, %r13
	movq	24(%rdi), %rax
	mulq	%r9
	addq	%rax, %rbx
	adcq	$0, %rdx
	addq	%r13, %rbx
	adcq	%rdx, %r14
	movq	$38, %rdi
	movq	%r10, %rax
	mulq	%rdi
	movq	%rax, %r9
	movq	%rdx, %r10
	movq	%r8, %rax
	mulq	%rdi
	addq	%rax, %r10
	movq	$0, %r8
	movq	%rbx, %rax
	adcq	%rdx, %r8
	mulq	%rdi
	addq	%rax, %r8
	movq	$0, %rbx
	movq	%r14, %rax
	adcq	%rdx, %rbx
	mulq	%rdi
	addq	%rax, %rbx
	movq	$0, %rax
	adcq	%rdx, %rax
	addq	%r11, %r9
	adcq	%r12, %r10
	adcq	%rbp, %r8
	adcq	%rcx, %rbx
	adcq	$0, %rax
	imulq	$38, %rax, %rax
	movq	$0, %rcx
	addq	%rax, %r9
	adcq	%rcx, %r10
	adcq	%rcx, %r8
	adcq	%rcx, %rbx
	adcq	%rcx, %rcx
	imulq	$38, %rcx, %rax
	addq	%rax, %r9
	movq	%r9, (%rsi)
	movq	%r10, 8(%rsi)
	movq	%r8, 16(%rsi)
	movq	%rbx, 24(%rsi)
	ret
L_i_poly_tomsg$1:
	call	L_poly_csubq$1
L_i_poly_tomsg$2:
	movb	$0, %sil
	movw	(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	2(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	4(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	6(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	8(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	10(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	12(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	14(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, (%rax)
	movb	$0, %sil
	movw	16(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	18(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	20(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	22(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	24(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	26(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	28(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	30(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 1(%rax)
	movb	$0, %sil
	movw	32(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	34(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	36(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	38(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	40(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	42(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	44(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	46(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 2(%rax)
	movb	$0, %sil
	movw	48(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	50(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	52(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	54(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	56(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	58(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	60(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	62(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 3(%rax)
	movb	$0, %sil
	movw	64(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	66(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	68(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	70(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	72(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	74(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	76(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	78(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 4(%rax)
	movb	$0, %sil
	movw	80(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	82(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	84(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	86(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	88(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	90(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	92(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	94(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 5(%rax)
	movb	$0, %sil
	movw	96(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	98(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	100(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	102(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	104(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	106(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	108(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	110(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 6(%rax)
	movb	$0, %sil
	movw	112(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	114(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	116(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	118(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	120(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	122(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	124(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	126(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 7(%rax)
	movb	$0, %sil
	movw	128(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	130(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	132(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	134(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	136(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	138(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	140(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	142(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 8(%rax)
	movb	$0, %sil
	movw	144(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	146(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	148(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	150(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	152(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	154(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	156(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	158(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 9(%rax)
	movb	$0, %sil
	movw	160(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	162(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	164(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	166(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	168(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	170(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	172(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	174(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 10(%rax)
	movb	$0, %sil
	movw	176(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	178(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	180(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	182(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	184(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	186(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	188(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	190(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 11(%rax)
	movb	$0, %sil
	movw	192(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	194(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	196(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	198(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	200(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	202(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	204(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	206(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 12(%rax)
	movb	$0, %sil
	movw	208(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	210(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	212(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	214(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	216(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	218(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	220(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	222(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 13(%rax)
	movb	$0, %sil
	movw	224(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	226(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	228(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	230(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	232(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	234(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	236(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	238(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 14(%rax)
	movb	$0, %sil
	movw	240(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	242(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	244(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	246(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	248(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	250(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	252(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	254(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 15(%rax)
	movb	$0, %sil
	movw	256(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	258(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	260(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	262(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	264(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	266(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	268(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	270(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 16(%rax)
	movb	$0, %sil
	movw	272(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	274(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	276(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	278(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	280(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	282(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	284(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	286(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 17(%rax)
	movb	$0, %sil
	movw	288(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	290(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	292(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	294(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	296(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	298(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	300(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	302(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 18(%rax)
	movb	$0, %sil
	movw	304(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	306(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	308(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	310(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	312(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	314(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	316(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	318(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 19(%rax)
	movb	$0, %sil
	movw	320(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	322(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	324(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	326(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	328(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	330(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	332(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	334(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 20(%rax)
	movb	$0, %sil
	movw	336(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	338(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	340(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	342(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	344(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	346(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	348(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	350(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 21(%rax)
	movb	$0, %sil
	movw	352(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	354(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	356(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	358(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	360(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	362(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	364(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	366(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 22(%rax)
	movb	$0, %sil
	movw	368(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	370(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	372(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	374(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	376(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	378(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	380(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	382(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 23(%rax)
	movb	$0, %sil
	movw	384(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	386(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	388(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	390(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	392(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	394(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	396(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	398(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 24(%rax)
	movb	$0, %sil
	movw	400(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	402(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	404(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	406(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	408(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	410(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	412(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	414(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 25(%rax)
	movb	$0, %sil
	movw	416(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	418(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	420(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	422(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	424(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	426(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	428(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	430(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 26(%rax)
	movb	$0, %sil
	movw	432(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	434(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	436(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	438(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	440(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	442(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	444(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	446(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 27(%rax)
	movb	$0, %sil
	movw	448(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	450(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	452(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	454(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	456(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	458(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	460(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	462(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 28(%rax)
	movb	$0, %sil
	movw	464(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	466(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	468(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	470(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	472(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	474(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	476(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	478(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 29(%rax)
	movb	$0, %sil
	movw	480(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	482(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	484(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	486(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	488(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	490(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	492(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	494(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %sil
	movb	%sil, 30(%rax)
	movb	$0, %sil
	movw	496(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %sil
	movw	498(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %sil
	movw	500(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %sil
	movw	502(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %sil
	movw	504(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %sil
	movw	506(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %sil
	movw	508(%rcx), %di
	movzwl	%di, %edi
	shll	$1, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %sil
	movw	510(%rcx), %cx
	movzwl	%cx, %ecx
	shll	$1, %ecx
	addl	$1665, %ecx
	imull	$80635, %ecx, %ecx
	shrl	$28, %ecx
	andl	$1, %ecx
	shll	$7, %ecx
	orb 	%cl, %sil
	movb	%sil, 31(%rax)
	ret
L_poly_tobytes$1:
	call	L_poly_csubq$1
L_poly_tobytes$4:
	movq	$0, %rsi
	movq	$0, %rdi
	jmp 	L_poly_tobytes$2
L_poly_tobytes$3:
	movw	(%rcx,%rsi,2), %r8w
	incq	%rsi
	movw	(%rcx,%rsi,2), %r9w
	incq	%rsi
	movw	%r8w, %r10w
	andw	$255, %r10w
	movb	%r10b, (%rdx,%rdi)
	incq	%rdi
	shrw	$8, %r8w
	movw	%r9w, %r10w
	andw	$15, %r10w
	shlw	$4, %r10w
	orw 	%r8w, %r10w
	movb	%r10b, (%rdx,%rdi)
	incq	%rdi
	shrw	$4, %r9w
	movb	%r9b, (%rdx,%rdi)
	incq	%rdi
L_poly_tobytes$2:
	cmpq	$256, %rsi
	jb  	L_poly_tobytes$3
	ret
L_poly_sub$1:
	movq	$0, %r8
	jmp 	L_poly_sub$2
L_poly_sub$3:
	movw	(%rsi,%r8,2), %r9w
	movw	(%rdi,%r8,2), %r10w
	subw	%r10w, %r9w
	movw	%r9w, (%rcx,%r8,2)
	incq	%r8
L_poly_sub$2:
	cmpq	$256, %r8
	jb  	L_poly_sub$3
	ret
L_poly_ntt$1:
	leaq	glob_data + 448(%rip), %rsi
	movq	$0, %rdi
	movq	$128, %r8
	jmp 	L_poly_ntt$4
L_poly_ntt$5:
	movq	$0, %r11
	jmp 	L_poly_ntt$6
L_poly_ntt$7:
	incq	%rdi
	movw	(%rsi,%rdi,2), %r9w
	movq	%r11, %r10
	addq	%r8, %r11
	jmp 	L_poly_ntt$8
L_poly_ntt$9:
	movw	(%rcx,%r10,2), %bx
	movw	%bx, %bp
	movq	%r10, %r12
	addq	%r8, %r12
	movw	(%rcx,%r12,2), %r13w
	movswl	%r13w, %r13d
	movswl	%r9w, %r14d
	imull	%r14d, %r13d
	imull	$-218038272, %r13d, %r14d
	sarl	$16, %r14d
	imull	$-3329, %r14d, %r14d
	addl	%r13d, %r14d
	sarl	$16, %r14d
	subw	%r14w, %bp
	addw	%bx, %r14w
	movw	%bp, (%rcx,%r12,2)
	movw	%r14w, (%rcx,%r10,2)
	incq	%r10
L_poly_ntt$8:
	cmpq	%r11, %r10
	jb  	L_poly_ntt$9
	movq	%r10, %r11
	addq	%r8, %r11
L_poly_ntt$6:
	cmpq	$256, %r11
	jb  	L_poly_ntt$7
	shrq	$1, %r8
L_poly_ntt$4:
	cmpq	$2, %r8
	jnb 	L_poly_ntt$5
	movq	$0, %rsi
	jmp 	L_poly_ntt$2
L_poly_ntt$3:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	incq	%rsi
L_poly_ntt$2:
	cmpq	$256, %rsi
	jb  	L_poly_ntt$3
	ret
L_poly_invntt$1:
	leaq	glob_data + 192(%rip), %rsi
	movq	$0, %rdi
	movq	$2, %r8
	jmp 	L_poly_invntt$4
L_poly_invntt$5:
	movq	$0, %r11
	jmp 	L_poly_invntt$6
L_poly_invntt$7:
	movw	(%rsi,%rdi,2), %r9w
	incq	%rdi
	movq	%r11, %r10
	addq	%r8, %r11
	jmp 	L_poly_invntt$8
L_poly_invntt$9:
	movw	(%rcx,%r10,2), %bx
	movq	%r10, %rbp
	addq	%r8, %rbp
	movw	(%rcx,%rbp,2), %r12w
	movw	%r12w, %r13w
	addw	%bx, %r13w
	movswl	%r13w, %r14d
	imull	$20159, %r14d, %r14d
	sarl	$26, %r14d
	imull	$3329, %r14d, %r14d
	subw	%r14w, %r13w
	movw	%r13w, (%rcx,%r10,2)
	subw	%r12w, %bx
	movswl	%bx, %ebx
	movswl	%r9w, %r12d
	imull	%r12d, %ebx
	imull	$-218038272, %ebx, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%ebx, %r12d
	sarl	$16, %r12d
	movw	%r12w, (%rcx,%rbp,2)
	incq	%r10
L_poly_invntt$8:
	cmpq	%r11, %r10
	jb  	L_poly_invntt$9
	movq	%r10, %r11
	addq	%r8, %r11
L_poly_invntt$6:
	cmpq	$256, %r11
	jb  	L_poly_invntt$7
	shlq	$1, %r8
L_poly_invntt$4:
	cmpq	$128, %r8
	jbe 	L_poly_invntt$5
	movw	254(%rsi), %si
	movq	$0, %rdi
	jmp 	L_poly_invntt$2
L_poly_invntt$3:
	movw	(%rcx,%rdi,2), %r8w
	movswl	%r8w, %r8d
	movswl	%si, %r9d
	imull	%r9d, %r8d
	imull	$-218038272, %r8d, %r9d
	sarl	$16, %r9d
	imull	$-3329, %r9d, %r9d
	addl	%r8d, %r9d
	sarl	$16, %r9d
	movw	%r9w, (%rcx,%rdi,2)
	incq	%rdi
L_poly_invntt$2:
	cmpq	$256, %rdi
	jb  	L_poly_invntt$3
	ret
L_poly_getnoise$1:
	movq	%rdx, 8(%rsp)
	movb	(%rcx), %dl
	movb	%dl, 16(%rsp)
	movb	1(%rcx), %dl
	movb	%dl, 17(%rsp)
	movb	2(%rcx), %dl
	movb	%dl, 18(%rsp)
	movb	3(%rcx), %dl
	movb	%dl, 19(%rsp)
	movb	4(%rcx), %dl
	movb	%dl, 20(%rsp)
	movb	5(%rcx), %dl
	movb	%dl, 21(%rsp)
	movb	6(%rcx), %dl
	movb	%dl, 22(%rsp)
	movb	7(%rcx), %dl
	movb	%dl, 23(%rsp)
	movb	8(%rcx), %dl
	movb	%dl, 24(%rsp)
	movb	9(%rcx), %dl
	movb	%dl, 25(%rsp)
	movb	10(%rcx), %dl
	movb	%dl, 26(%rsp)
	movb	11(%rcx), %dl
	movb	%dl, 27(%rsp)
	movb	12(%rcx), %dl
	movb	%dl, 28(%rsp)
	movb	13(%rcx), %dl
	movb	%dl, 29(%rsp)
	movb	14(%rcx), %dl
	movb	%dl, 30(%rsp)
	movb	15(%rcx), %dl
	movb	%dl, 31(%rsp)
	movb	16(%rcx), %dl
	movb	%dl, 32(%rsp)
	movb	17(%rcx), %dl
	movb	%dl, 33(%rsp)
	movb	18(%rcx), %dl
	movb	%dl, 34(%rsp)
	movb	19(%rcx), %dl
	movb	%dl, 35(%rsp)
	movb	20(%rcx), %dl
	movb	%dl, 36(%rsp)
	movb	21(%rcx), %dl
	movb	%dl, 37(%rsp)
	movb	22(%rcx), %dl
	movb	%dl, 38(%rsp)
	movb	23(%rcx), %dl
	movb	%dl, 39(%rsp)
	movb	24(%rcx), %dl
	movb	%dl, 40(%rsp)
	movb	25(%rcx), %dl
	movb	%dl, 41(%rsp)
	movb	26(%rcx), %dl
	movb	%dl, 42(%rsp)
	movb	27(%rcx), %dl
	movb	%dl, 43(%rsp)
	movb	28(%rcx), %dl
	movb	%dl, 44(%rsp)
	movb	29(%rcx), %dl
	movb	%dl, 45(%rsp)
	movb	30(%rcx), %dl
	movb	%dl, 46(%rsp)
	movb	31(%rcx), %cl
	movb	%cl, 47(%rsp)
	movb	%al, 48(%rsp)
	leaq	49(%rsp), %rcx
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_shake256_128_33$1
L_poly_getnoise$4:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	$0, %rcx
	jmp 	L_poly_getnoise$2
L_poly_getnoise$3:
	movb	49(%rsp,%rcx), %dl
	movb	%dl, %sil
	andb	$85, %sil
	shrb	$1, %dl
	andb	$85, %dl
	addb	%sil, %dl
	movb	%dl, %sil
	andb	$3, %sil
	movb	%dl, %dil
	shrb	$2, %dil
	andb	$3, %dil
	subb	%dil, %sil
	movsbw	%sil, %si
	movw	%si, (%rax,%rcx,4)
	movb	%dl, %sil
	shrb	$4, %sil
	andb	$3, %sil
	shrb	$6, %dl
	andb	$3, %dl
	subb	%dl, %sil
	movsbw	%sil, %dx
	movw	%dx, 2(%rax,%rcx,4)
	incq	%rcx
L_poly_getnoise$2:
	cmpq	$128, %rcx
	jb  	L_poly_getnoise$3
	ret
L_i_poly_frommsg$1:
	movb	(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, (%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 2(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 4(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 6(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 8(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 10(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 12(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 14(%rcx)
	movb	1(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 16(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 18(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 20(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 22(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 24(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 26(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 28(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 30(%rcx)
	movb	2(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 32(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 34(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 36(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 38(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 40(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 42(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 44(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 46(%rcx)
	movb	3(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 48(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 50(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 52(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 54(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 56(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 58(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 60(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 62(%rcx)
	movb	4(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 64(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 66(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 68(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 70(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 72(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 74(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 76(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 78(%rcx)
	movb	5(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 80(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 82(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 84(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 86(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 88(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 90(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 92(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 94(%rcx)
	movb	6(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 96(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 98(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 100(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 102(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 104(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 106(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 108(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 110(%rcx)
	movb	7(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 112(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 114(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 116(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 118(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 120(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 122(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 124(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 126(%rcx)
	movb	8(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 128(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 130(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 132(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 134(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 136(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 138(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 140(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 142(%rcx)
	movb	9(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 144(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 146(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 148(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 150(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 152(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 154(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 156(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 158(%rcx)
	movb	10(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 160(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 162(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 164(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 166(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 168(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 170(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 172(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 174(%rcx)
	movb	11(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 176(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 178(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 180(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 182(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 184(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 186(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 188(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 190(%rcx)
	movb	12(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 192(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 194(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 196(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 198(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 200(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 202(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 204(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 206(%rcx)
	movb	13(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 208(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 210(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 212(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 214(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 216(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 218(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 220(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 222(%rcx)
	movb	14(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 224(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 226(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 228(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 230(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 232(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 234(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 236(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 238(%rcx)
	movb	15(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 240(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 242(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 244(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 246(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 248(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 250(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 252(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 254(%rcx)
	movb	16(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 256(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 258(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 260(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 262(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 264(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 266(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 268(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 270(%rcx)
	movb	17(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 272(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 274(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 276(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 278(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 280(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 282(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 284(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 286(%rcx)
	movb	18(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 288(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 290(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 292(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 294(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 296(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 298(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 300(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 302(%rcx)
	movb	19(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 304(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 306(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 308(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 310(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 312(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 314(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 316(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 318(%rcx)
	movb	20(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 320(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 322(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 324(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 326(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 328(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 330(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 332(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 334(%rcx)
	movb	21(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 336(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 338(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 340(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 342(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 344(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 346(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 348(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 350(%rcx)
	movb	22(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 352(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 354(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 356(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 358(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 360(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 362(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 364(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 366(%rcx)
	movb	23(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 368(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 370(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 372(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 374(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 376(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 378(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 380(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 382(%rcx)
	movb	24(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 384(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 386(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 388(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 390(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 392(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 394(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 396(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 398(%rcx)
	movb	25(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 400(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 402(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 404(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 406(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 408(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 410(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 412(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 414(%rcx)
	movb	26(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 416(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 418(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 420(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 422(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 424(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 426(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 428(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 430(%rcx)
	movb	27(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 432(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 434(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 436(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 438(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 440(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 442(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 444(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 446(%rcx)
	movb	28(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 448(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 450(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 452(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 454(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 456(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 458(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 460(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 462(%rcx)
	movb	29(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 464(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 466(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 468(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 470(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 472(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 474(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 476(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 478(%rcx)
	movb	30(%rax), %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 480(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 482(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 484(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 486(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 488(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 490(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 492(%rcx)
	shrb	$1, %dl
	movzbw	%dl, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 494(%rcx)
	movb	31(%rax), %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 496(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 498(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 500(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 502(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 504(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 506(%rcx)
	shrb	$1, %al
	movzbw	%al, %dx
	andw	$1, %dx
	imulw	$1665, %dx, %dx
	movw	%dx, 508(%rcx)
	shrb	$1, %al
	movzbw	%al, %ax
	andw	$1, %ax
	imulw	$1665, %ax, %ax
	movw	%ax, 510(%rcx)
	ret
L_poly_frommont$1:
	movw	$1353, %cx
	movq	$0, %rdx
	jmp 	L_poly_frommont$2
L_poly_frommont$3:
	movw	(%rax,%rdx,2), %si
	movswl	%si, %esi
	movswl	%cx, %edi
	imull	%edi, %esi
	imull	$-218038272, %esi, %edi
	sarl	$16, %edi
	imull	$-3329, %edi, %edi
	addl	%esi, %edi
	sarl	$16, %edi
	movw	%di, (%rax,%rdx,2)
	incq	%rdx
L_poly_frommont$2:
	cmpq	$256, %rdx
	jb  	L_poly_frommont$3
	ret
L_poly_frombytes$1:
	movb	(%rsi), %r8b
	movb	1(%rsi), %r9b
	movb	2(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, (%rdi)
	movw	%r10w, 2(%rdi)
	movb	3(%rsi), %r8b
	movb	4(%rsi), %r9b
	movb	5(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 4(%rdi)
	movw	%r10w, 6(%rdi)
	movb	6(%rsi), %r8b
	movb	7(%rsi), %r9b
	movb	8(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 8(%rdi)
	movw	%r10w, 10(%rdi)
	movb	9(%rsi), %r8b
	movb	10(%rsi), %r9b
	movb	11(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 12(%rdi)
	movw	%r10w, 14(%rdi)
	movb	12(%rsi), %r8b
	movb	13(%rsi), %r9b
	movb	14(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 16(%rdi)
	movw	%r10w, 18(%rdi)
	movb	15(%rsi), %r8b
	movb	16(%rsi), %r9b
	movb	17(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 20(%rdi)
	movw	%r10w, 22(%rdi)
	movb	18(%rsi), %r8b
	movb	19(%rsi), %r9b
	movb	20(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 24(%rdi)
	movw	%r10w, 26(%rdi)
	movb	21(%rsi), %r8b
	movb	22(%rsi), %r9b
	movb	23(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 28(%rdi)
	movw	%r10w, 30(%rdi)
	movb	24(%rsi), %r8b
	movb	25(%rsi), %r9b
	movb	26(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 32(%rdi)
	movw	%r10w, 34(%rdi)
	movb	27(%rsi), %r8b
	movb	28(%rsi), %r9b
	movb	29(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 36(%rdi)
	movw	%r10w, 38(%rdi)
	movb	30(%rsi), %r8b
	movb	31(%rsi), %r9b
	movb	32(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 40(%rdi)
	movw	%r10w, 42(%rdi)
	movb	33(%rsi), %r8b
	movb	34(%rsi), %r9b
	movb	35(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 44(%rdi)
	movw	%r10w, 46(%rdi)
	movb	36(%rsi), %r8b
	movb	37(%rsi), %r9b
	movb	38(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 48(%rdi)
	movw	%r10w, 50(%rdi)
	movb	39(%rsi), %r8b
	movb	40(%rsi), %r9b
	movb	41(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 52(%rdi)
	movw	%r10w, 54(%rdi)
	movb	42(%rsi), %r8b
	movb	43(%rsi), %r9b
	movb	44(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 56(%rdi)
	movw	%r10w, 58(%rdi)
	movb	45(%rsi), %r8b
	movb	46(%rsi), %r9b
	movb	47(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 60(%rdi)
	movw	%r10w, 62(%rdi)
	movb	48(%rsi), %r8b
	movb	49(%rsi), %r9b
	movb	50(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 64(%rdi)
	movw	%r10w, 66(%rdi)
	movb	51(%rsi), %r8b
	movb	52(%rsi), %r9b
	movb	53(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 68(%rdi)
	movw	%r10w, 70(%rdi)
	movb	54(%rsi), %r8b
	movb	55(%rsi), %r9b
	movb	56(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 72(%rdi)
	movw	%r10w, 74(%rdi)
	movb	57(%rsi), %r8b
	movb	58(%rsi), %r9b
	movb	59(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 76(%rdi)
	movw	%r10w, 78(%rdi)
	movb	60(%rsi), %r8b
	movb	61(%rsi), %r9b
	movb	62(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 80(%rdi)
	movw	%r10w, 82(%rdi)
	movb	63(%rsi), %r8b
	movb	64(%rsi), %r9b
	movb	65(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 84(%rdi)
	movw	%r10w, 86(%rdi)
	movb	66(%rsi), %r8b
	movb	67(%rsi), %r9b
	movb	68(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 88(%rdi)
	movw	%r10w, 90(%rdi)
	movb	69(%rsi), %r8b
	movb	70(%rsi), %r9b
	movb	71(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 92(%rdi)
	movw	%r10w, 94(%rdi)
	movb	72(%rsi), %r8b
	movb	73(%rsi), %r9b
	movb	74(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 96(%rdi)
	movw	%r10w, 98(%rdi)
	movb	75(%rsi), %r8b
	movb	76(%rsi), %r9b
	movb	77(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 100(%rdi)
	movw	%r10w, 102(%rdi)
	movb	78(%rsi), %r8b
	movb	79(%rsi), %r9b
	movb	80(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 104(%rdi)
	movw	%r10w, 106(%rdi)
	movb	81(%rsi), %r8b
	movb	82(%rsi), %r9b
	movb	83(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 108(%rdi)
	movw	%r10w, 110(%rdi)
	movb	84(%rsi), %r8b
	movb	85(%rsi), %r9b
	movb	86(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 112(%rdi)
	movw	%r10w, 114(%rdi)
	movb	87(%rsi), %r8b
	movb	88(%rsi), %r9b
	movb	89(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 116(%rdi)
	movw	%r10w, 118(%rdi)
	movb	90(%rsi), %r8b
	movb	91(%rsi), %r9b
	movb	92(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 120(%rdi)
	movw	%r10w, 122(%rdi)
	movb	93(%rsi), %r8b
	movb	94(%rsi), %r9b
	movb	95(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 124(%rdi)
	movw	%r10w, 126(%rdi)
	movb	96(%rsi), %r8b
	movb	97(%rsi), %r9b
	movb	98(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 128(%rdi)
	movw	%r10w, 130(%rdi)
	movb	99(%rsi), %r8b
	movb	100(%rsi), %r9b
	movb	101(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 132(%rdi)
	movw	%r10w, 134(%rdi)
	movb	102(%rsi), %r8b
	movb	103(%rsi), %r9b
	movb	104(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 136(%rdi)
	movw	%r10w, 138(%rdi)
	movb	105(%rsi), %r8b
	movb	106(%rsi), %r9b
	movb	107(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 140(%rdi)
	movw	%r10w, 142(%rdi)
	movb	108(%rsi), %r8b
	movb	109(%rsi), %r9b
	movb	110(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 144(%rdi)
	movw	%r10w, 146(%rdi)
	movb	111(%rsi), %r8b
	movb	112(%rsi), %r9b
	movb	113(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 148(%rdi)
	movw	%r10w, 150(%rdi)
	movb	114(%rsi), %r8b
	movb	115(%rsi), %r9b
	movb	116(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 152(%rdi)
	movw	%r10w, 154(%rdi)
	movb	117(%rsi), %r8b
	movb	118(%rsi), %r9b
	movb	119(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 156(%rdi)
	movw	%r10w, 158(%rdi)
	movb	120(%rsi), %r8b
	movb	121(%rsi), %r9b
	movb	122(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 160(%rdi)
	movw	%r10w, 162(%rdi)
	movb	123(%rsi), %r8b
	movb	124(%rsi), %r9b
	movb	125(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 164(%rdi)
	movw	%r10w, 166(%rdi)
	movb	126(%rsi), %r8b
	movb	127(%rsi), %r9b
	movb	128(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 168(%rdi)
	movw	%r10w, 170(%rdi)
	movb	129(%rsi), %r8b
	movb	130(%rsi), %r9b
	movb	131(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 172(%rdi)
	movw	%r10w, 174(%rdi)
	movb	132(%rsi), %r8b
	movb	133(%rsi), %r9b
	movb	134(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 176(%rdi)
	movw	%r10w, 178(%rdi)
	movb	135(%rsi), %r8b
	movb	136(%rsi), %r9b
	movb	137(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 180(%rdi)
	movw	%r10w, 182(%rdi)
	movb	138(%rsi), %r8b
	movb	139(%rsi), %r9b
	movb	140(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 184(%rdi)
	movw	%r10w, 186(%rdi)
	movb	141(%rsi), %r8b
	movb	142(%rsi), %r9b
	movb	143(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 188(%rdi)
	movw	%r10w, 190(%rdi)
	movb	144(%rsi), %r8b
	movb	145(%rsi), %r9b
	movb	146(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 192(%rdi)
	movw	%r10w, 194(%rdi)
	movb	147(%rsi), %r8b
	movb	148(%rsi), %r9b
	movb	149(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 196(%rdi)
	movw	%r10w, 198(%rdi)
	movb	150(%rsi), %r8b
	movb	151(%rsi), %r9b
	movb	152(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 200(%rdi)
	movw	%r10w, 202(%rdi)
	movb	153(%rsi), %r8b
	movb	154(%rsi), %r9b
	movb	155(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 204(%rdi)
	movw	%r10w, 206(%rdi)
	movb	156(%rsi), %r8b
	movb	157(%rsi), %r9b
	movb	158(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 208(%rdi)
	movw	%r10w, 210(%rdi)
	movb	159(%rsi), %r8b
	movb	160(%rsi), %r9b
	movb	161(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 212(%rdi)
	movw	%r10w, 214(%rdi)
	movb	162(%rsi), %r8b
	movb	163(%rsi), %r9b
	movb	164(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 216(%rdi)
	movw	%r10w, 218(%rdi)
	movb	165(%rsi), %r8b
	movb	166(%rsi), %r9b
	movb	167(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 220(%rdi)
	movw	%r10w, 222(%rdi)
	movb	168(%rsi), %r8b
	movb	169(%rsi), %r9b
	movb	170(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 224(%rdi)
	movw	%r10w, 226(%rdi)
	movb	171(%rsi), %r8b
	movb	172(%rsi), %r9b
	movb	173(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 228(%rdi)
	movw	%r10w, 230(%rdi)
	movb	174(%rsi), %r8b
	movb	175(%rsi), %r9b
	movb	176(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 232(%rdi)
	movw	%r10w, 234(%rdi)
	movb	177(%rsi), %r8b
	movb	178(%rsi), %r9b
	movb	179(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 236(%rdi)
	movw	%r10w, 238(%rdi)
	movb	180(%rsi), %r8b
	movb	181(%rsi), %r9b
	movb	182(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 240(%rdi)
	movw	%r10w, 242(%rdi)
	movb	183(%rsi), %r8b
	movb	184(%rsi), %r9b
	movb	185(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 244(%rdi)
	movw	%r10w, 246(%rdi)
	movb	186(%rsi), %r8b
	movb	187(%rsi), %r9b
	movb	188(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 248(%rdi)
	movw	%r10w, 250(%rdi)
	movb	189(%rsi), %r8b
	movb	190(%rsi), %r9b
	movb	191(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 252(%rdi)
	movw	%r10w, 254(%rdi)
	movb	192(%rsi), %r8b
	movb	193(%rsi), %r9b
	movb	194(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 256(%rdi)
	movw	%r10w, 258(%rdi)
	movb	195(%rsi), %r8b
	movb	196(%rsi), %r9b
	movb	197(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 260(%rdi)
	movw	%r10w, 262(%rdi)
	movb	198(%rsi), %r8b
	movb	199(%rsi), %r9b
	movb	200(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 264(%rdi)
	movw	%r10w, 266(%rdi)
	movb	201(%rsi), %r8b
	movb	202(%rsi), %r9b
	movb	203(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 268(%rdi)
	movw	%r10w, 270(%rdi)
	movb	204(%rsi), %r8b
	movb	205(%rsi), %r9b
	movb	206(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 272(%rdi)
	movw	%r10w, 274(%rdi)
	movb	207(%rsi), %r8b
	movb	208(%rsi), %r9b
	movb	209(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 276(%rdi)
	movw	%r10w, 278(%rdi)
	movb	210(%rsi), %r8b
	movb	211(%rsi), %r9b
	movb	212(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 280(%rdi)
	movw	%r10w, 282(%rdi)
	movb	213(%rsi), %r8b
	movb	214(%rsi), %r9b
	movb	215(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 284(%rdi)
	movw	%r10w, 286(%rdi)
	movb	216(%rsi), %r8b
	movb	217(%rsi), %r9b
	movb	218(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 288(%rdi)
	movw	%r10w, 290(%rdi)
	movb	219(%rsi), %r8b
	movb	220(%rsi), %r9b
	movb	221(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 292(%rdi)
	movw	%r10w, 294(%rdi)
	movb	222(%rsi), %r8b
	movb	223(%rsi), %r9b
	movb	224(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 296(%rdi)
	movw	%r10w, 298(%rdi)
	movb	225(%rsi), %r8b
	movb	226(%rsi), %r9b
	movb	227(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 300(%rdi)
	movw	%r10w, 302(%rdi)
	movb	228(%rsi), %r8b
	movb	229(%rsi), %r9b
	movb	230(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 304(%rdi)
	movw	%r10w, 306(%rdi)
	movb	231(%rsi), %r8b
	movb	232(%rsi), %r9b
	movb	233(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 308(%rdi)
	movw	%r10w, 310(%rdi)
	movb	234(%rsi), %r8b
	movb	235(%rsi), %r9b
	movb	236(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 312(%rdi)
	movw	%r10w, 314(%rdi)
	movb	237(%rsi), %r8b
	movb	238(%rsi), %r9b
	movb	239(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 316(%rdi)
	movw	%r10w, 318(%rdi)
	movb	240(%rsi), %r8b
	movb	241(%rsi), %r9b
	movb	242(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 320(%rdi)
	movw	%r10w, 322(%rdi)
	movb	243(%rsi), %r8b
	movb	244(%rsi), %r9b
	movb	245(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 324(%rdi)
	movw	%r10w, 326(%rdi)
	movb	246(%rsi), %r8b
	movb	247(%rsi), %r9b
	movb	248(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 328(%rdi)
	movw	%r10w, 330(%rdi)
	movb	249(%rsi), %r8b
	movb	250(%rsi), %r9b
	movb	251(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 332(%rdi)
	movw	%r10w, 334(%rdi)
	movb	252(%rsi), %r8b
	movb	253(%rsi), %r9b
	movb	254(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 336(%rdi)
	movw	%r10w, 338(%rdi)
	movb	255(%rsi), %r8b
	movb	256(%rsi), %r9b
	movb	257(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 340(%rdi)
	movw	%r10w, 342(%rdi)
	movb	258(%rsi), %r8b
	movb	259(%rsi), %r9b
	movb	260(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 344(%rdi)
	movw	%r10w, 346(%rdi)
	movb	261(%rsi), %r8b
	movb	262(%rsi), %r9b
	movb	263(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 348(%rdi)
	movw	%r10w, 350(%rdi)
	movb	264(%rsi), %r8b
	movb	265(%rsi), %r9b
	movb	266(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 352(%rdi)
	movw	%r10w, 354(%rdi)
	movb	267(%rsi), %r8b
	movb	268(%rsi), %r9b
	movb	269(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 356(%rdi)
	movw	%r10w, 358(%rdi)
	movb	270(%rsi), %r8b
	movb	271(%rsi), %r9b
	movb	272(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 360(%rdi)
	movw	%r10w, 362(%rdi)
	movb	273(%rsi), %r8b
	movb	274(%rsi), %r9b
	movb	275(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 364(%rdi)
	movw	%r10w, 366(%rdi)
	movb	276(%rsi), %r8b
	movb	277(%rsi), %r9b
	movb	278(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 368(%rdi)
	movw	%r10w, 370(%rdi)
	movb	279(%rsi), %r8b
	movb	280(%rsi), %r9b
	movb	281(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 372(%rdi)
	movw	%r10w, 374(%rdi)
	movb	282(%rsi), %r8b
	movb	283(%rsi), %r9b
	movb	284(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 376(%rdi)
	movw	%r10w, 378(%rdi)
	movb	285(%rsi), %r8b
	movb	286(%rsi), %r9b
	movb	287(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 380(%rdi)
	movw	%r10w, 382(%rdi)
	movb	288(%rsi), %r8b
	movb	289(%rsi), %r9b
	movb	290(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 384(%rdi)
	movw	%r10w, 386(%rdi)
	movb	291(%rsi), %r8b
	movb	292(%rsi), %r9b
	movb	293(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 388(%rdi)
	movw	%r10w, 390(%rdi)
	movb	294(%rsi), %r8b
	movb	295(%rsi), %r9b
	movb	296(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 392(%rdi)
	movw	%r10w, 394(%rdi)
	movb	297(%rsi), %r8b
	movb	298(%rsi), %r9b
	movb	299(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 396(%rdi)
	movw	%r10w, 398(%rdi)
	movb	300(%rsi), %r8b
	movb	301(%rsi), %r9b
	movb	302(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 400(%rdi)
	movw	%r10w, 402(%rdi)
	movb	303(%rsi), %r8b
	movb	304(%rsi), %r9b
	movb	305(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 404(%rdi)
	movw	%r10w, 406(%rdi)
	movb	306(%rsi), %r8b
	movb	307(%rsi), %r9b
	movb	308(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 408(%rdi)
	movw	%r10w, 410(%rdi)
	movb	309(%rsi), %r8b
	movb	310(%rsi), %r9b
	movb	311(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 412(%rdi)
	movw	%r10w, 414(%rdi)
	movb	312(%rsi), %r8b
	movb	313(%rsi), %r9b
	movb	314(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 416(%rdi)
	movw	%r10w, 418(%rdi)
	movb	315(%rsi), %r8b
	movb	316(%rsi), %r9b
	movb	317(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 420(%rdi)
	movw	%r10w, 422(%rdi)
	movb	318(%rsi), %r8b
	movb	319(%rsi), %r9b
	movb	320(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 424(%rdi)
	movw	%r10w, 426(%rdi)
	movb	321(%rsi), %r8b
	movb	322(%rsi), %r9b
	movb	323(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 428(%rdi)
	movw	%r10w, 430(%rdi)
	movb	324(%rsi), %r8b
	movb	325(%rsi), %r9b
	movb	326(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 432(%rdi)
	movw	%r10w, 434(%rdi)
	movb	327(%rsi), %r8b
	movb	328(%rsi), %r9b
	movb	329(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 436(%rdi)
	movw	%r10w, 438(%rdi)
	movb	330(%rsi), %r8b
	movb	331(%rsi), %r9b
	movb	332(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 440(%rdi)
	movw	%r10w, 442(%rdi)
	movb	333(%rsi), %r8b
	movb	334(%rsi), %r9b
	movb	335(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 444(%rdi)
	movw	%r10w, 446(%rdi)
	movb	336(%rsi), %r8b
	movb	337(%rsi), %r9b
	movb	338(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 448(%rdi)
	movw	%r10w, 450(%rdi)
	movb	339(%rsi), %r8b
	movb	340(%rsi), %r9b
	movb	341(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 452(%rdi)
	movw	%r10w, 454(%rdi)
	movb	342(%rsi), %r8b
	movb	343(%rsi), %r9b
	movb	344(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 456(%rdi)
	movw	%r10w, 458(%rdi)
	movb	345(%rsi), %r8b
	movb	346(%rsi), %r9b
	movb	347(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 460(%rdi)
	movw	%r10w, 462(%rdi)
	movb	348(%rsi), %r8b
	movb	349(%rsi), %r9b
	movb	350(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 464(%rdi)
	movw	%r10w, 466(%rdi)
	movb	351(%rsi), %r8b
	movb	352(%rsi), %r9b
	movb	353(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 468(%rdi)
	movw	%r10w, 470(%rdi)
	movb	354(%rsi), %r8b
	movb	355(%rsi), %r9b
	movb	356(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 472(%rdi)
	movw	%r10w, 474(%rdi)
	movb	357(%rsi), %r8b
	movb	358(%rsi), %r9b
	movb	359(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 476(%rdi)
	movw	%r10w, 478(%rdi)
	movb	360(%rsi), %r8b
	movb	361(%rsi), %r9b
	movb	362(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 480(%rdi)
	movw	%r10w, 482(%rdi)
	movb	363(%rsi), %r8b
	movb	364(%rsi), %r9b
	movb	365(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 484(%rdi)
	movw	%r10w, 486(%rdi)
	movb	366(%rsi), %r8b
	movb	367(%rsi), %r9b
	movb	368(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 488(%rdi)
	movw	%r10w, 490(%rdi)
	movb	369(%rsi), %r8b
	movb	370(%rsi), %r9b
	movb	371(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 492(%rdi)
	movw	%r10w, 494(%rdi)
	movb	372(%rsi), %r8b
	movb	373(%rsi), %r9b
	movb	374(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 496(%rdi)
	movw	%r10w, 498(%rdi)
	movb	375(%rsi), %r8b
	movb	376(%rsi), %r9b
	movb	377(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 500(%rdi)
	movw	%r10w, 502(%rdi)
	movb	378(%rsi), %r8b
	movb	379(%rsi), %r9b
	movb	380(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 504(%rdi)
	movw	%r10w, 506(%rdi)
	movb	381(%rsi), %r8b
	movb	382(%rsi), %r9b
	movb	383(%rsi), %r10b
	movzbw	%r8b, %r8w
	movzbw	%r9b, %r11w
	andw	$15, %r11w
	shlw	$8, %r11w
	orw 	%r11w, %r8w
	movzbw	%r10b, %r10w
	shlw	$4, %r10w
	movzbw	%r9b, %r9w
	shrw	$4, %r9w
	orw 	%r9w, %r10w
	movw	%r8w, 508(%rdi)
	movw	%r10w, 510(%rdi)
	ret
L_poly_decompress$1:
	movq	$0, %rdi
	jmp 	L_poly_decompress$2
L_poly_decompress$3:
	movb	(%rcx,%rdi), %r8b
	movzbw	%r8b, %r9w
	movzbw	%r8b, %r8w
	andw	$15, %r9w
	shrw	$4, %r8w
	imulw	$3329, %r9w, %r9w
	imulw	$3329, %r8w, %r8w
	addw	$8, %r9w
	addw	$8, %r8w
	shrw	$4, %r9w
	shrw	$4, %r8w
	movw	%r9w, (%rsi,%rdi,4)
	movw	%r8w, 2(%rsi,%rdi,4)
	incq	%rdi
L_poly_decompress$2:
	cmpq	$128, %rdi
	jb  	L_poly_decompress$3
	ret
L_i_poly_compress$1:
	call	L_poly_csubq$1
L_i_poly_compress$4:
	movq	$0, %rdx
	jmp 	L_i_poly_compress$2
L_i_poly_compress$3:
	movzwl	(%rcx,%rdx,4), %esi
	movzwl	2(%rcx,%rdx,4), %edi
	shll	$4, %esi
	addl	$1665, %esi
	imull	$80635, %esi, %esi
	shrl	$28, %esi
	andl	$15, %esi
	shll	$4, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$15, %edi
	shll	$4, %edi
	orl 	%edi, %esi
	movb	%sil, (%rax,%rdx)
	incq	%rdx
L_i_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_i_poly_compress$3
	ret
L_poly_compress$1:
	call	L_poly_csubq$1
L_poly_compress$4:
	movq	$0, %rdx
	jmp 	L_poly_compress$2
L_poly_compress$3:
	movzwl	(%rcx,%rdx,4), %esi
	movzwl	2(%rcx,%rdx,4), %edi
	shll	$4, %esi
	addl	$1665, %esi
	imull	$80635, %esi, %esi
	shrl	$28, %esi
	andl	$15, %esi
	shll	$4, %edi
	addl	$1665, %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$15, %edi
	shll	$4, %edi
	orl 	%edi, %esi
	movb	%sil, (%rax,%rdx)
	incq	%rdx
L_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_poly_compress$3
	ret
L_poly_basemul$1:
	movq	%rdi, 8(%rsp)
	movq	$0, %rdi
	jmp 	L_poly_basemul$2
L_poly_basemul$3:
	leaq	glob_data + 576(%rip), %r8
	movq	%rdi, %r9
	shrq	$2, %r9
	movw	(%r8,%r9,2), %r8w
	movw	(%rcx,%rdi,2), %r9w
	movw	(%rsi,%rdi,2), %r10w
	incq	%rdi
	movw	(%rcx,%rdi,2), %r11w
	movw	(%rsi,%rdi,2), %bx
	addq	$-1, %rdi
	movswl	%r11w, %ebp
	movswl	%bx, %r12d
	imull	%r12d, %ebp
	imull	$-218038272, %ebp, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%ebp, %r12d
	sarl	$16, %r12d
	movswl	%r12w, %ebp
	movswl	%r8w, %r12d
	imull	%r12d, %ebp
	imull	$-218038272, %ebp, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%ebp, %r12d
	sarl	$16, %r12d
	movw	%r12w, %bp
	movswl	%r9w, %r12d
	movswl	%r10w, %r13d
	imull	%r13d, %r12d
	imull	$-218038272, %r12d, %r13d
	sarl	$16, %r13d
	imull	$-3329, %r13d, %r13d
	addl	%r12d, %r13d
	sarl	$16, %r13d
	addw	%r13w, %bp
	movswl	%r9w, %r9d
	movswl	%bx, %ebx
	imull	%ebx, %r9d
	imull	$-218038272, %r9d, %ebx
	sarl	$16, %ebx
	imull	$-3329, %ebx, %ebx
	addl	%r9d, %ebx
	sarl	$16, %ebx
	movw	%bx, %r9w
	movswl	%r11w, %r11d
	movswl	%r10w, %r10d
	imull	%r10d, %r11d
	imull	$-218038272, %r11d, %r10d
	sarl	$16, %r10d
	imull	$-3329, %r10d, %r10d
	addl	%r11d, %r10d
	sarl	$16, %r10d
	addw	%r10w, %r9w
	movq	8(%rsp), %r10
	movw	%bp, (%r10,%rdi,2)
	incq	%rdi
	movw	%r9w, (%r10,%rdi,2)
	movq	%r10, 16(%rsp)
	negw	%r8w
	incq	%rdi
	movw	(%rcx,%rdi,2), %r9w
	movw	(%rsi,%rdi,2), %r10w
	incq	%rdi
	movw	(%rcx,%rdi,2), %r11w
	movw	(%rsi,%rdi,2), %bx
	addq	$-1, %rdi
	movswl	%r11w, %ebp
	movswl	%bx, %r12d
	imull	%r12d, %ebp
	imull	$-218038272, %ebp, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%ebp, %r12d
	sarl	$16, %r12d
	movswl	%r12w, %ebp
	movswl	%r8w, %r8d
	imull	%r8d, %ebp
	imull	$-218038272, %ebp, %r8d
	sarl	$16, %r8d
	imull	$-3329, %r8d, %r8d
	addl	%ebp, %r8d
	sarl	$16, %r8d
	movswl	%r9w, %ebp
	movswl	%r10w, %r12d
	imull	%r12d, %ebp
	imull	$-218038272, %ebp, %r12d
	sarl	$16, %r12d
	imull	$-3329, %r12d, %r12d
	addl	%ebp, %r12d
	sarl	$16, %r12d
	addw	%r12w, %r8w
	movswl	%r9w, %r9d
	movswl	%bx, %ebx
	imull	%ebx, %r9d
	imull	$-218038272, %r9d, %ebx
	sarl	$16, %ebx
	imull	$-3329, %ebx, %ebx
	addl	%r9d, %ebx
	sarl	$16, %ebx
	movswl	%r11w, %r9d
	movswl	%r10w, %r10d
	imull	%r10d, %r9d
	imull	$-218038272, %r9d, %r10d
	sarl	$16, %r10d
	imull	$-3329, %r10d, %r10d
	addl	%r9d, %r10d
	sarl	$16, %r10d
	addw	%r10w, %bx
	movq	16(%rsp), %r9
	movw	%r8w, (%r9,%rdi,2)
	incq	%rdi
	movw	%bx, (%r9,%rdi,2)
	incq	%rdi
L_poly_basemul$2:
	cmpq	$253, %rdi
	jb  	L_poly_basemul$3
	ret
L_poly_csubq$1:
	movq	$0, %r8
	jmp 	L_poly_csubq$2
L_poly_csubq$3:
	movw	(%rcx,%r8,2), %r9w
	addw	$-3329, %r9w
	movw	%r9w, %r10w
	sarw	$15, %r10w
	andw	$3329, %r10w
	addw	%r10w, %r9w
	movw	%r9w, (%rcx,%r8,2)
	incq	%r8
L_poly_csubq$2:
	cmpq	$256, %r8
	jb  	L_poly_csubq$3
	ret
L_poly_add2$1:
	movq	$0, %rdi
	jmp 	L_poly_add2$2
L_poly_add2$3:
	movw	(%rcx,%rdi,2), %r8w
	movw	(%rsi,%rdi,2), %r9w
	addw	%r9w, %r8w
	movw	%r8w, (%rcx,%rdi,2)
	incq	%rdi
L_poly_add2$2:
	cmpq	$256, %rdi
	jb  	L_poly_add2$3
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
L_shake128_squeezeblock$1:
	movq	%rcx, 8(%rsp)
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake128_squeezeblock$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rcx
	movb	(%rax), %dl
	movb	%dl, (%rcx)
	movb	1(%rax), %dl
	movb	%dl, 1(%rcx)
	movb	2(%rax), %dl
	movb	%dl, 2(%rcx)
	movb	3(%rax), %dl
	movb	%dl, 3(%rcx)
	movb	4(%rax), %dl
	movb	%dl, 4(%rcx)
	movb	5(%rax), %dl
	movb	%dl, 5(%rcx)
	movb	6(%rax), %dl
	movb	%dl, 6(%rcx)
	movb	7(%rax), %dl
	movb	%dl, 7(%rcx)
	movb	8(%rax), %dl
	movb	%dl, 8(%rcx)
	movb	9(%rax), %dl
	movb	%dl, 9(%rcx)
	movb	10(%rax), %dl
	movb	%dl, 10(%rcx)
	movb	11(%rax), %dl
	movb	%dl, 11(%rcx)
	movb	12(%rax), %dl
	movb	%dl, 12(%rcx)
	movb	13(%rax), %dl
	movb	%dl, 13(%rcx)
	movb	14(%rax), %dl
	movb	%dl, 14(%rcx)
	movb	15(%rax), %dl
	movb	%dl, 15(%rcx)
	movb	16(%rax), %dl
	movb	%dl, 16(%rcx)
	movb	17(%rax), %dl
	movb	%dl, 17(%rcx)
	movb	18(%rax), %dl
	movb	%dl, 18(%rcx)
	movb	19(%rax), %dl
	movb	%dl, 19(%rcx)
	movb	20(%rax), %dl
	movb	%dl, 20(%rcx)
	movb	21(%rax), %dl
	movb	%dl, 21(%rcx)
	movb	22(%rax), %dl
	movb	%dl, 22(%rcx)
	movb	23(%rax), %dl
	movb	%dl, 23(%rcx)
	movb	24(%rax), %dl
	movb	%dl, 24(%rcx)
	movb	25(%rax), %dl
	movb	%dl, 25(%rcx)
	movb	26(%rax), %dl
	movb	%dl, 26(%rcx)
	movb	27(%rax), %dl
	movb	%dl, 27(%rcx)
	movb	28(%rax), %dl
	movb	%dl, 28(%rcx)
	movb	29(%rax), %dl
	movb	%dl, 29(%rcx)
	movb	30(%rax), %dl
	movb	%dl, 30(%rcx)
	movb	31(%rax), %dl
	movb	%dl, 31(%rcx)
	movb	32(%rax), %dl
	movb	%dl, 32(%rcx)
	movb	33(%rax), %dl
	movb	%dl, 33(%rcx)
	movb	34(%rax), %dl
	movb	%dl, 34(%rcx)
	movb	35(%rax), %dl
	movb	%dl, 35(%rcx)
	movb	36(%rax), %dl
	movb	%dl, 36(%rcx)
	movb	37(%rax), %dl
	movb	%dl, 37(%rcx)
	movb	38(%rax), %dl
	movb	%dl, 38(%rcx)
	movb	39(%rax), %dl
	movb	%dl, 39(%rcx)
	movb	40(%rax), %dl
	movb	%dl, 40(%rcx)
	movb	41(%rax), %dl
	movb	%dl, 41(%rcx)
	movb	42(%rax), %dl
	movb	%dl, 42(%rcx)
	movb	43(%rax), %dl
	movb	%dl, 43(%rcx)
	movb	44(%rax), %dl
	movb	%dl, 44(%rcx)
	movb	45(%rax), %dl
	movb	%dl, 45(%rcx)
	movb	46(%rax), %dl
	movb	%dl, 46(%rcx)
	movb	47(%rax), %dl
	movb	%dl, 47(%rcx)
	movb	48(%rax), %dl
	movb	%dl, 48(%rcx)
	movb	49(%rax), %dl
	movb	%dl, 49(%rcx)
	movb	50(%rax), %dl
	movb	%dl, 50(%rcx)
	movb	51(%rax), %dl
	movb	%dl, 51(%rcx)
	movb	52(%rax), %dl
	movb	%dl, 52(%rcx)
	movb	53(%rax), %dl
	movb	%dl, 53(%rcx)
	movb	54(%rax), %dl
	movb	%dl, 54(%rcx)
	movb	55(%rax), %dl
	movb	%dl, 55(%rcx)
	movb	56(%rax), %dl
	movb	%dl, 56(%rcx)
	movb	57(%rax), %dl
	movb	%dl, 57(%rcx)
	movb	58(%rax), %dl
	movb	%dl, 58(%rcx)
	movb	59(%rax), %dl
	movb	%dl, 59(%rcx)
	movb	60(%rax), %dl
	movb	%dl, 60(%rcx)
	movb	61(%rax), %dl
	movb	%dl, 61(%rcx)
	movb	62(%rax), %dl
	movb	%dl, 62(%rcx)
	movb	63(%rax), %dl
	movb	%dl, 63(%rcx)
	movb	64(%rax), %dl
	movb	%dl, 64(%rcx)
	movb	65(%rax), %dl
	movb	%dl, 65(%rcx)
	movb	66(%rax), %dl
	movb	%dl, 66(%rcx)
	movb	67(%rax), %dl
	movb	%dl, 67(%rcx)
	movb	68(%rax), %dl
	movb	%dl, 68(%rcx)
	movb	69(%rax), %dl
	movb	%dl, 69(%rcx)
	movb	70(%rax), %dl
	movb	%dl, 70(%rcx)
	movb	71(%rax), %dl
	movb	%dl, 71(%rcx)
	movb	72(%rax), %dl
	movb	%dl, 72(%rcx)
	movb	73(%rax), %dl
	movb	%dl, 73(%rcx)
	movb	74(%rax), %dl
	movb	%dl, 74(%rcx)
	movb	75(%rax), %dl
	movb	%dl, 75(%rcx)
	movb	76(%rax), %dl
	movb	%dl, 76(%rcx)
	movb	77(%rax), %dl
	movb	%dl, 77(%rcx)
	movb	78(%rax), %dl
	movb	%dl, 78(%rcx)
	movb	79(%rax), %dl
	movb	%dl, 79(%rcx)
	movb	80(%rax), %dl
	movb	%dl, 80(%rcx)
	movb	81(%rax), %dl
	movb	%dl, 81(%rcx)
	movb	82(%rax), %dl
	movb	%dl, 82(%rcx)
	movb	83(%rax), %dl
	movb	%dl, 83(%rcx)
	movb	84(%rax), %dl
	movb	%dl, 84(%rcx)
	movb	85(%rax), %dl
	movb	%dl, 85(%rcx)
	movb	86(%rax), %dl
	movb	%dl, 86(%rcx)
	movb	87(%rax), %dl
	movb	%dl, 87(%rcx)
	movb	88(%rax), %dl
	movb	%dl, 88(%rcx)
	movb	89(%rax), %dl
	movb	%dl, 89(%rcx)
	movb	90(%rax), %dl
	movb	%dl, 90(%rcx)
	movb	91(%rax), %dl
	movb	%dl, 91(%rcx)
	movb	92(%rax), %dl
	movb	%dl, 92(%rcx)
	movb	93(%rax), %dl
	movb	%dl, 93(%rcx)
	movb	94(%rax), %dl
	movb	%dl, 94(%rcx)
	movb	95(%rax), %dl
	movb	%dl, 95(%rcx)
	movb	96(%rax), %dl
	movb	%dl, 96(%rcx)
	movb	97(%rax), %dl
	movb	%dl, 97(%rcx)
	movb	98(%rax), %dl
	movb	%dl, 98(%rcx)
	movb	99(%rax), %dl
	movb	%dl, 99(%rcx)
	movb	100(%rax), %dl
	movb	%dl, 100(%rcx)
	movb	101(%rax), %dl
	movb	%dl, 101(%rcx)
	movb	102(%rax), %dl
	movb	%dl, 102(%rcx)
	movb	103(%rax), %dl
	movb	%dl, 103(%rcx)
	movb	104(%rax), %dl
	movb	%dl, 104(%rcx)
	movb	105(%rax), %dl
	movb	%dl, 105(%rcx)
	movb	106(%rax), %dl
	movb	%dl, 106(%rcx)
	movb	107(%rax), %dl
	movb	%dl, 107(%rcx)
	movb	108(%rax), %dl
	movb	%dl, 108(%rcx)
	movb	109(%rax), %dl
	movb	%dl, 109(%rcx)
	movb	110(%rax), %dl
	movb	%dl, 110(%rcx)
	movb	111(%rax), %dl
	movb	%dl, 111(%rcx)
	movb	112(%rax), %dl
	movb	%dl, 112(%rcx)
	movb	113(%rax), %dl
	movb	%dl, 113(%rcx)
	movb	114(%rax), %dl
	movb	%dl, 114(%rcx)
	movb	115(%rax), %dl
	movb	%dl, 115(%rcx)
	movb	116(%rax), %dl
	movb	%dl, 116(%rcx)
	movb	117(%rax), %dl
	movb	%dl, 117(%rcx)
	movb	118(%rax), %dl
	movb	%dl, 118(%rcx)
	movb	119(%rax), %dl
	movb	%dl, 119(%rcx)
	movb	120(%rax), %dl
	movb	%dl, 120(%rcx)
	movb	121(%rax), %dl
	movb	%dl, 121(%rcx)
	movb	122(%rax), %dl
	movb	%dl, 122(%rcx)
	movb	123(%rax), %dl
	movb	%dl, 123(%rcx)
	movb	124(%rax), %dl
	movb	%dl, 124(%rcx)
	movb	125(%rax), %dl
	movb	%dl, 125(%rcx)
	movb	126(%rax), %dl
	movb	%dl, 126(%rcx)
	movb	127(%rax), %dl
	movb	%dl, 127(%rcx)
	movb	128(%rax), %dl
	movb	%dl, 128(%rcx)
	movb	129(%rax), %dl
	movb	%dl, 129(%rcx)
	movb	130(%rax), %dl
	movb	%dl, 130(%rcx)
	movb	131(%rax), %dl
	movb	%dl, 131(%rcx)
	movb	132(%rax), %dl
	movb	%dl, 132(%rcx)
	movb	133(%rax), %dl
	movb	%dl, 133(%rcx)
	movb	134(%rax), %dl
	movb	%dl, 134(%rcx)
	movb	135(%rax), %dl
	movb	%dl, 135(%rcx)
	movb	136(%rax), %dl
	movb	%dl, 136(%rcx)
	movb	137(%rax), %dl
	movb	%dl, 137(%rcx)
	movb	138(%rax), %dl
	movb	%dl, 138(%rcx)
	movb	139(%rax), %dl
	movb	%dl, 139(%rcx)
	movb	140(%rax), %dl
	movb	%dl, 140(%rcx)
	movb	141(%rax), %dl
	movb	%dl, 141(%rcx)
	movb	142(%rax), %dl
	movb	%dl, 142(%rcx)
	movb	143(%rax), %dl
	movb	%dl, 143(%rcx)
	movb	144(%rax), %dl
	movb	%dl, 144(%rcx)
	movb	145(%rax), %dl
	movb	%dl, 145(%rcx)
	movb	146(%rax), %dl
	movb	%dl, 146(%rcx)
	movb	147(%rax), %dl
	movb	%dl, 147(%rcx)
	movb	148(%rax), %dl
	movb	%dl, 148(%rcx)
	movb	149(%rax), %dl
	movb	%dl, 149(%rcx)
	movb	150(%rax), %dl
	movb	%dl, 150(%rcx)
	movb	151(%rax), %dl
	movb	%dl, 151(%rcx)
	movb	152(%rax), %dl
	movb	%dl, 152(%rcx)
	movb	153(%rax), %dl
	movb	%dl, 153(%rcx)
	movb	154(%rax), %dl
	movb	%dl, 154(%rcx)
	movb	155(%rax), %dl
	movb	%dl, 155(%rcx)
	movb	156(%rax), %dl
	movb	%dl, 156(%rcx)
	movb	157(%rax), %dl
	movb	%dl, 157(%rcx)
	movb	158(%rax), %dl
	movb	%dl, 158(%rcx)
	movb	159(%rax), %dl
	movb	%dl, 159(%rcx)
	movb	160(%rax), %dl
	movb	%dl, 160(%rcx)
	movb	161(%rax), %dl
	movb	%dl, 161(%rcx)
	movb	162(%rax), %dl
	movb	%dl, 162(%rcx)
	movb	163(%rax), %dl
	movb	%dl, 163(%rcx)
	movb	164(%rax), %dl
	movb	%dl, 164(%rcx)
	movb	165(%rax), %dl
	movb	%dl, 165(%rcx)
	movb	166(%rax), %dl
	movb	%dl, 166(%rcx)
	movb	167(%rax), %al
	movb	%al, 167(%rcx)
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
	movb	(%rcx), %dl
	xorb	%dl, (%rax)
	movb	1(%rcx), %dl
	xorb	%dl, 1(%rax)
	movb	2(%rcx), %dl
	xorb	%dl, 2(%rax)
	movb	3(%rcx), %dl
	xorb	%dl, 3(%rax)
	movb	4(%rcx), %dl
	xorb	%dl, 4(%rax)
	movb	5(%rcx), %dl
	xorb	%dl, 5(%rax)
	movb	6(%rcx), %dl
	xorb	%dl, 6(%rax)
	movb	7(%rcx), %dl
	xorb	%dl, 7(%rax)
	movb	8(%rcx), %dl
	xorb	%dl, 8(%rax)
	movb	9(%rcx), %dl
	xorb	%dl, 9(%rax)
	movb	10(%rcx), %dl
	xorb	%dl, 10(%rax)
	movb	11(%rcx), %dl
	xorb	%dl, 11(%rax)
	movb	12(%rcx), %dl
	xorb	%dl, 12(%rax)
	movb	13(%rcx), %dl
	xorb	%dl, 13(%rax)
	movb	14(%rcx), %dl
	xorb	%dl, 14(%rax)
	movb	15(%rcx), %dl
	xorb	%dl, 15(%rax)
	movb	16(%rcx), %dl
	xorb	%dl, 16(%rax)
	movb	17(%rcx), %dl
	xorb	%dl, 17(%rax)
	movb	18(%rcx), %dl
	xorb	%dl, 18(%rax)
	movb	19(%rcx), %dl
	xorb	%dl, 19(%rax)
	movb	20(%rcx), %dl
	xorb	%dl, 20(%rax)
	movb	21(%rcx), %dl
	xorb	%dl, 21(%rax)
	movb	22(%rcx), %dl
	xorb	%dl, 22(%rax)
	movb	23(%rcx), %dl
	xorb	%dl, 23(%rax)
	movb	24(%rcx), %dl
	xorb	%dl, 24(%rax)
	movb	25(%rcx), %dl
	xorb	%dl, 25(%rax)
	movb	26(%rcx), %dl
	xorb	%dl, 26(%rax)
	movb	27(%rcx), %dl
	xorb	%dl, 27(%rax)
	movb	28(%rcx), %dl
	xorb	%dl, 28(%rax)
	movb	29(%rcx), %dl
	xorb	%dl, 29(%rax)
	movb	30(%rcx), %dl
	xorb	%dl, 30(%rax)
	movb	31(%rcx), %dl
	xorb	%dl, 31(%rax)
	movb	32(%rcx), %dl
	xorb	%dl, 32(%rax)
	movb	33(%rcx), %cl
	xorb	%cl, 33(%rax)
	xorb	$31, 34(%rax)
	xorb	$128, 167(%rax)
	ret
L_sha3512_32$1:
	movq	%rcx, 8(%rsp)
	leaq	16(%rsp), %rcx
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
	movb	(%rax), %cl
	xorb	%cl, 16(%rsp)
	movb	1(%rax), %cl
	xorb	%cl, 17(%rsp)
	movb	2(%rax), %cl
	xorb	%cl, 18(%rsp)
	movb	3(%rax), %cl
	xorb	%cl, 19(%rsp)
	movb	4(%rax), %cl
	xorb	%cl, 20(%rsp)
	movb	5(%rax), %cl
	xorb	%cl, 21(%rsp)
	movb	6(%rax), %cl
	xorb	%cl, 22(%rsp)
	movb	7(%rax), %cl
	xorb	%cl, 23(%rsp)
	movb	8(%rax), %cl
	xorb	%cl, 24(%rsp)
	movb	9(%rax), %cl
	xorb	%cl, 25(%rsp)
	movb	10(%rax), %cl
	xorb	%cl, 26(%rsp)
	movb	11(%rax), %cl
	xorb	%cl, 27(%rsp)
	movb	12(%rax), %cl
	xorb	%cl, 28(%rsp)
	movb	13(%rax), %cl
	xorb	%cl, 29(%rsp)
	movb	14(%rax), %cl
	xorb	%cl, 30(%rsp)
	movb	15(%rax), %cl
	xorb	%cl, 31(%rsp)
	movb	16(%rax), %cl
	xorb	%cl, 32(%rsp)
	movb	17(%rax), %cl
	xorb	%cl, 33(%rsp)
	movb	18(%rax), %cl
	xorb	%cl, 34(%rsp)
	movb	19(%rax), %cl
	xorb	%cl, 35(%rsp)
	movb	20(%rax), %cl
	xorb	%cl, 36(%rsp)
	movb	21(%rax), %cl
	xorb	%cl, 37(%rsp)
	movb	22(%rax), %cl
	xorb	%cl, 38(%rsp)
	movb	23(%rax), %cl
	xorb	%cl, 39(%rsp)
	movb	24(%rax), %cl
	xorb	%cl, 40(%rsp)
	movb	25(%rax), %cl
	xorb	%cl, 41(%rsp)
	movb	26(%rax), %cl
	xorb	%cl, 42(%rsp)
	movb	27(%rax), %cl
	xorb	%cl, 43(%rsp)
	movb	28(%rax), %cl
	xorb	%cl, 44(%rsp)
	movb	29(%rax), %cl
	xorb	%cl, 45(%rsp)
	movb	30(%rax), %cl
	xorb	%cl, 46(%rsp)
	movb	31(%rax), %al
	xorb	%al, 47(%rsp)
	xorb	$6, 48(%rsp)
	xorb	$128, 87(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_sha3512_32$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movb	16(%rsp), %cl
	movb	%cl, (%rax)
	movb	17(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	18(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	19(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	20(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	21(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	22(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	23(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	24(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	25(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	26(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	27(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	28(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	29(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	30(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	31(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	32(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	33(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	34(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	35(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	64(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	65(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	66(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	67(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	68(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	69(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	70(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	71(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	72(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	73(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	74(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	75(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	76(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	77(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	78(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	79(%rsp), %cl
	movb	%cl, 63(%rax)
	ret
L_shake256_1120_32$1:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
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
	movq	96(%rax), %rax
	xorq	%rax, 168(%rsp)
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
L_shake256_128_33$1:
	movq	%rcx, 8(%rsp)
	leaq	16(%rsp), %rcx
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
	movb	(%rax), %cl
	xorb	%cl, 16(%rsp)
	movb	1(%rax), %cl
	xorb	%cl, 17(%rsp)
	movb	2(%rax), %cl
	xorb	%cl, 18(%rsp)
	movb	3(%rax), %cl
	xorb	%cl, 19(%rsp)
	movb	4(%rax), %cl
	xorb	%cl, 20(%rsp)
	movb	5(%rax), %cl
	xorb	%cl, 21(%rsp)
	movb	6(%rax), %cl
	xorb	%cl, 22(%rsp)
	movb	7(%rax), %cl
	xorb	%cl, 23(%rsp)
	movb	8(%rax), %cl
	xorb	%cl, 24(%rsp)
	movb	9(%rax), %cl
	xorb	%cl, 25(%rsp)
	movb	10(%rax), %cl
	xorb	%cl, 26(%rsp)
	movb	11(%rax), %cl
	xorb	%cl, 27(%rsp)
	movb	12(%rax), %cl
	xorb	%cl, 28(%rsp)
	movb	13(%rax), %cl
	xorb	%cl, 29(%rsp)
	movb	14(%rax), %cl
	xorb	%cl, 30(%rsp)
	movb	15(%rax), %cl
	xorb	%cl, 31(%rsp)
	movb	16(%rax), %cl
	xorb	%cl, 32(%rsp)
	movb	17(%rax), %cl
	xorb	%cl, 33(%rsp)
	movb	18(%rax), %cl
	xorb	%cl, 34(%rsp)
	movb	19(%rax), %cl
	xorb	%cl, 35(%rsp)
	movb	20(%rax), %cl
	xorb	%cl, 36(%rsp)
	movb	21(%rax), %cl
	xorb	%cl, 37(%rsp)
	movb	22(%rax), %cl
	xorb	%cl, 38(%rsp)
	movb	23(%rax), %cl
	xorb	%cl, 39(%rsp)
	movb	24(%rax), %cl
	xorb	%cl, 40(%rsp)
	movb	25(%rax), %cl
	xorb	%cl, 41(%rsp)
	movb	26(%rax), %cl
	xorb	%cl, 42(%rsp)
	movb	27(%rax), %cl
	xorb	%cl, 43(%rsp)
	movb	28(%rax), %cl
	xorb	%cl, 44(%rsp)
	movb	29(%rax), %cl
	xorb	%cl, 45(%rsp)
	movb	30(%rax), %cl
	xorb	%cl, 46(%rsp)
	movb	31(%rax), %cl
	xorb	%cl, 47(%rsp)
	movb	32(%rax), %al
	xorb	%al, 48(%rsp)
	xorb	$31, 49(%rsp)
	xorb	$128, 151(%rsp)
	leaq	16(%rsp), %rax
	leaq	-208(%rsp), %rsp
	call	L_keccakf1600$1
L_shake256_128_33$2:
	leaq	208(%rsp), %rsp
	movq	8(%rsp), %rax
	movb	16(%rsp), %cl
	movb	%cl, (%rax)
	movb	17(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	18(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	19(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	20(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	21(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	22(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	23(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	24(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	25(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	26(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	27(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	28(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	29(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	30(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	31(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	32(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	33(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	34(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	35(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	64(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	65(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	66(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	67(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	68(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	69(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	70(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	71(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	72(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	73(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	74(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	75(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	76(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	77(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	78(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	79(%rsp), %cl
	movb	%cl, 63(%rax)
	movb	80(%rsp), %cl
	movb	%cl, 64(%rax)
	movb	81(%rsp), %cl
	movb	%cl, 65(%rax)
	movb	82(%rsp), %cl
	movb	%cl, 66(%rax)
	movb	83(%rsp), %cl
	movb	%cl, 67(%rax)
	movb	84(%rsp), %cl
	movb	%cl, 68(%rax)
	movb	85(%rsp), %cl
	movb	%cl, 69(%rax)
	movb	86(%rsp), %cl
	movb	%cl, 70(%rax)
	movb	87(%rsp), %cl
	movb	%cl, 71(%rax)
	movb	88(%rsp), %cl
	movb	%cl, 72(%rax)
	movb	89(%rsp), %cl
	movb	%cl, 73(%rax)
	movb	90(%rsp), %cl
	movb	%cl, 74(%rax)
	movb	91(%rsp), %cl
	movb	%cl, 75(%rax)
	movb	92(%rsp), %cl
	movb	%cl, 76(%rax)
	movb	93(%rsp), %cl
	movb	%cl, 77(%rax)
	movb	94(%rsp), %cl
	movb	%cl, 78(%rax)
	movb	95(%rsp), %cl
	movb	%cl, 79(%rax)
	movb	96(%rsp), %cl
	movb	%cl, 80(%rax)
	movb	97(%rsp), %cl
	movb	%cl, 81(%rax)
	movb	98(%rsp), %cl
	movb	%cl, 82(%rax)
	movb	99(%rsp), %cl
	movb	%cl, 83(%rax)
	movb	100(%rsp), %cl
	movb	%cl, 84(%rax)
	movb	101(%rsp), %cl
	movb	%cl, 85(%rax)
	movb	102(%rsp), %cl
	movb	%cl, 86(%rax)
	movb	103(%rsp), %cl
	movb	%cl, 87(%rax)
	movb	104(%rsp), %cl
	movb	%cl, 88(%rax)
	movb	105(%rsp), %cl
	movb	%cl, 89(%rax)
	movb	106(%rsp), %cl
	movb	%cl, 90(%rax)
	movb	107(%rsp), %cl
	movb	%cl, 91(%rax)
	movb	108(%rsp), %cl
	movb	%cl, 92(%rax)
	movb	109(%rsp), %cl
	movb	%cl, 93(%rax)
	movb	110(%rsp), %cl
	movb	%cl, 94(%rax)
	movb	111(%rsp), %cl
	movb	%cl, 95(%rax)
	movb	112(%rsp), %cl
	movb	%cl, 96(%rax)
	movb	113(%rsp), %cl
	movb	%cl, 97(%rax)
	movb	114(%rsp), %cl
	movb	%cl, 98(%rax)
	movb	115(%rsp), %cl
	movb	%cl, 99(%rax)
	movb	116(%rsp), %cl
	movb	%cl, 100(%rax)
	movb	117(%rsp), %cl
	movb	%cl, 101(%rax)
	movb	118(%rsp), %cl
	movb	%cl, 102(%rax)
	movb	119(%rsp), %cl
	movb	%cl, 103(%rax)
	movb	120(%rsp), %cl
	movb	%cl, 104(%rax)
	movb	121(%rsp), %cl
	movb	%cl, 105(%rax)
	movb	122(%rsp), %cl
	movb	%cl, 106(%rax)
	movb	123(%rsp), %cl
	movb	%cl, 107(%rax)
	movb	124(%rsp), %cl
	movb	%cl, 108(%rax)
	movb	125(%rsp), %cl
	movb	%cl, 109(%rax)
	movb	126(%rsp), %cl
	movb	%cl, 110(%rax)
	movb	127(%rsp), %cl
	movb	%cl, 111(%rax)
	movb	128(%rsp), %cl
	movb	%cl, 112(%rax)
	movb	129(%rsp), %cl
	movb	%cl, 113(%rax)
	movb	130(%rsp), %cl
	movb	%cl, 114(%rax)
	movb	131(%rsp), %cl
	movb	%cl, 115(%rax)
	movb	132(%rsp), %cl
	movb	%cl, 116(%rax)
	movb	133(%rsp), %cl
	movb	%cl, 117(%rax)
	movb	134(%rsp), %cl
	movb	%cl, 118(%rax)
	movb	135(%rsp), %cl
	movb	%cl, 119(%rax)
	movb	136(%rsp), %cl
	movb	%cl, 120(%rax)
	movb	137(%rsp), %cl
	movb	%cl, 121(%rax)
	movb	138(%rsp), %cl
	movb	%cl, 122(%rax)
	movb	139(%rsp), %cl
	movb	%cl, 123(%rax)
	movb	140(%rsp), %cl
	movb	%cl, 124(%rax)
	movb	141(%rsp), %cl
	movb	%cl, 125(%rax)
	movb	142(%rsp), %cl
	movb	%cl, 126(%rax)
	movb	143(%rsp), %cl
	movb	%cl, 127(%rax)
	ret
L_keccakf1600$1:
	leaq	glob_data + 0(%rip), %rcx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rdx)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rdx)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rdx)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rdx)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rdx)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rdx)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rdx)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%r9, %r8
	notq	%r8
	andq	%r10, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rdx)
	movq	%r10, %r8
	notq	%r8
	andq	%r11, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rdx)
	movq	%r11, %r8
	notq	%r8
	andq	%rdi, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rdx)
	movq	%rdi, %r8
	notq	%r8
	andq	%rbx, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rdx)
	notq	%rbx
	andq	%r9, %rbx
	xorq	%rdi, %rbx
	movq	%rbx, 192(%rdx)
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	xorq	8(%rsp), %r15
	movq	%r15, (%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 8(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 16(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 24(%rax)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 40(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 48(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 56(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 64(%rax)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 80(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 88(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 96(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 104(%rax)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%rbp, %r15
	notq	%r15
	andq	%r12, %r15
	xorq	%rbx, %r15
	movq	%r15, 120(%rax)
	movq	%r12, %r15
	notq	%r15
	andq	%r13, %r15
	xorq	%rbp, %r15
	movq	%r15, 128(%rax)
	movq	%r13, %r15
	notq	%r15
	andq	%r14, %r15
	xorq	%r12, %r15
	movq	%r15, 136(%rax)
	movq	%r14, %r12
	notq	%r12
	andq	%rbx, %r12
	xorq	%r13, %r12
	movq	%r12, 144(%rax)
	notq	%rbx
	andq	%rbp, %rbx
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
	movq	%r9, %r8
	notq	%r8
	andq	%r10, %r8
	xorq	%rbx, %r8
	movq	%r8, 160(%rax)
	movq	%r10, %r8
	notq	%r8
	andq	%r11, %r8
	xorq	%r9, %r8
	movq	%r8, 168(%rax)
	movq	%r11, %r8
	notq	%r8
	andq	%rdi, %r8
	xorq	%r10, %r8
	movq	%r8, 176(%rax)
	movq	%rdi, %r8
	notq	%r8
	andq	%rbx, %r8
	xorq	%r11, %r8
	movq	%r8, 184(%rax)
	notq	%rbx
	andq	%r9, %rbx
	xorq	%rdi, %rbx
	movq	%rbx, 192(%rax)
	addq	$2, %rsi
L_keccakf1600$2:
	cmpq	$23, %rsi
	jb  	L_keccakf1600$3
	ret
	.data
	.p2align	5
_glob_data:
glob_data:
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
G$XWING_LABEL:
	.byte	92
	.byte	46
	.byte	47
	.byte	47
	.byte	94
	.byte	92
