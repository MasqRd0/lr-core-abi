/* 要求：完整保存程序执行所需上下文；切回后调用者应能继续往下执行。 */
typedef struct {
long rbp_val;
long rbx_val;
long r12_val;
long r13_val;
long r14_val;
long r15_val;
long rip_val;
long rsp_val;
} context_t;
