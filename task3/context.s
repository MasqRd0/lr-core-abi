	.globl	set_ctx
	.globl	jmp_to
set_ctx:
	movq	%rbp,(%rdi)		#存rbp
	movq	%rbx,8(%rdi)	#rbx
	movq	%r12,16(%rdi)	#r12
	movq	%r13,24(%rdi)	#r13
	movq	%r14,32(%rdi)	#r14
	movq	%r15,40(%rdi)	#r15
	movq	(%rsp),%rsi		#拿出返回地址
	movq	%rsi,48(%rdi)	#存返回地址
	leaq	8(%rsp),%rax	#取出调用set_ctx之后的栈指针
	movq	%rax,56(%rdi)	#存到56(%rdi)
	xorl	%eax,%eax
	ret						#return 0
jmp_to:
	movq	(%rdi),%rbp		#全部放回去
	movq	8(%rdi),%rbx	
	movq	16(%rdi),%r12	
	movq	24(%rdi),%r13	
	movq	32(%rdi),%r14	
	movq	40(%rdi),%r15	
	movq	48(%rdi),%rdx	
	movq	56(%rdi),%rsp	#栈指针存回去
	testl	%esi,%esi		#看看value是不是0
	jne		.L2				#如果不是->.L2
	movl	$1,%eax			#返回值=1
	jmp		*%rdx
.L2:	
	movl	%esi,%eax	
	jmp		*%rdx
