	.globl	my_strlen	
my_strlen:
	movq	$0,%rax		#int ans=0
	movq	%rdi,%rdx	#指针s存入%rdx;

.L2:
	cmpb	$0,(%rdx)	#*rdx='\0'吗
	je		.L3			#如果等于
	addq	$1,%rax		#ans++
	addq	$1,%rdx		#rdx++（char 1字节）
	jmp		.L2

.L3:
	ret
