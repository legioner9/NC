	.file	"sys_stat_1.c"
	.text
.Ltext0:
	.file 0 "/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs" "lib/sys_stat_1.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"failed in file %s at line # %d\n"
	.align 8
.LC1:
	.string	"from fstat_\321\201 fildes = %d, errno = %d\n"
.LC2:
	.string	"Error is: "
.LC3:
	.string	"return -1"
.LC4:
	.string	"exit(errno)"
.LC5:
	.string	"return original error"
	.align 8
.LC6:
	.string	"st__re NOT equal (STRE_ERR|STRE_MNS|STRE_EXI)  exit(1) That error NOT treat: "
	.align 8
.LC7:
	.string	" st__if NOT equal STIF_NUL exit(1)"
	.text
	.globl	fstat_с
	.type	fstat_с, @function
fstat_с:
.LFB6:
	.file 1 "lib/sys_stat_1.c"
	.loc 1 43 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	.loc 1 46 16
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 46 8
	testl	%eax, %eax
	je	.L2
.LBB2:
	.loc 1 48 17
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat
	movl	%eax, -4(%rbp)
	.loc 1 49 12
	cmpl	$-1, -4(%rbp)
	jne	.L3
	.loc 1 51 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 51 16
	testl	%eax, %eax
	je	.L4
	.loc 1 53 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 54 84
	call	__errno_location
	.loc 1 54 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 55 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 56 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L4:
	.loc 1 58 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 58 16
	testl	%eax, %eax
	je	.L5
	.loc 1 60 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 60 20
	testl	%eax, %eax
	je	.L6
	.loc 1 61 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	.loc 1 62 24
	movl	$-1, %eax
	jmp	.L7
.L5:
	.loc 1 64 29
	movl	16(%rbp), %eax
	andl	$4, %eax
	.loc 1 64 21
	testl	%eax, %eax
	je	.L8
	.loc 1 66 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 66 20
	testl	%eax, %eax
	je	.L9
	.loc 1 67 21
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L9:
	.loc 1 68 22
	call	__errno_location
	.loc 1 68 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L8:
	.loc 1 70 29
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 70 21
	testl	%eax, %eax
	je	.L10
	.loc 1 72 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 72 20
	testl	%eax, %eax
	je	.L11
	.loc 1 73 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L11:
	.loc 1 74 24
	movl	-4(%rbp), %eax
	jmp	.L7
.L10:
	.loc 1 78 17
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 79 84
	call	__errno_location
	.loc 1 79 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 80 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 81 17
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 84 16
	movl	-4(%rbp), %eax
	jmp	.L7
.L2:
.LBE2:
	.loc 1 88 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 89 9
	movl	$1, %edi
	call	exit
.L7:
	.loc 1 92 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fstat_с, .-fstat_с
	.section	.rodata
	.align 8
.LC8:
	.string	"from mkdir_\321\201 dir_path = %s, mode = %o, errno = %d\n"
.LC9:
	.string	"exit(errno) with"
	.text
	.globl	mkdir_с
	.type	mkdir_с, @function
mkdir_с:
.LFB7:
	.loc 1 98 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 1 99 13
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkdir
	movl	%eax, -4(%rbp)
	.loc 1 100 8
	cmpl	$-1, -4(%rbp)
	jne	.L13
	.loc 1 102 9
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 103 97
	call	__errno_location
	.loc 1 103 9
	movl	(%rax), %esi
	movq	stderr(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%esi, %r8d
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 104 9
	movl	$.LC9, %edi
	call	perror
	.loc 1 105 14
	call	__errno_location
	.loc 1 105 9
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L13:
	.loc 1 107 12
	movl	-4(%rbp), %eax
	.loc 1 108 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mkdir_с, .-mkdir_с
	.section	.rodata
	.align 8
.LC10:
	.string	"from mkfifo_\321\201 file_path = %s, errno = %d\n"
.LC11:
	.string	"exit(errno): "
	.text
	.globl	mkfifo_с
	.type	mkfifo_с, @function
mkfifo_с:
.LFB8:
	.loc 1 113 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	.loc 1 116 16
	movl	-48(%rbp), %eax
	andl	$1, %eax
	.loc 1 116 8
	testl	%eax, %eax
	je	.L16
.LBB3:
	.loc 1 118 17
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkfifo
	movl	%eax, -4(%rbp)
	.loc 1 119 12
	cmpl	$-1, -4(%rbp)
	jne	.L17
	.loc 1 121 24
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 121 16
	testl	%eax, %eax
	je	.L18
	.loc 1 123 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 124 91
	call	__errno_location
	.loc 1 124 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 125 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 126 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L18:
	.loc 1 128 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 128 16
	testl	%eax, %eax
	je	.L19
	.loc 1 130 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 130 20
	testl	%eax, %eax
	je	.L20
	.loc 1 131 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L20:
	.loc 1 132 24
	movl	$-1, %eax
	jmp	.L21
.L19:
	.loc 1 134 29
	movl	16(%rbp), %eax
	andl	$4, %eax
	.loc 1 134 21
	testl	%eax, %eax
	je	.L22
	.loc 1 136 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 136 20
	testl	%eax, %eax
	je	.L23
	.loc 1 137 21
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
.L23:
	.loc 1 138 22
	call	__errno_location
	.loc 1 138 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L22:
	.loc 1 140 29
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 140 21
	testl	%eax, %eax
	je	.L24
	.loc 1 142 28
	movl	-44(%rbp), %eax
	andl	$2, %eax
	.loc 1 142 20
	testl	%eax, %eax
	je	.L25
	.loc 1 143 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L25:
	.loc 1 144 24
	movl	-4(%rbp), %eax
	jmp	.L21
.L24:
	.loc 1 148 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 149 91
	call	__errno_location
	.loc 1 149 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 150 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 151 17
	movl	$1, %edi
	call	exit
.L17:
	.loc 1 154 16
	movl	-4(%rbp), %eax
	jmp	.L21
.L16:
.LBE3:
	.loc 1 158 9
	movl	$.LC7, %edi
	call	perror
	.loc 1 159 9
	movl	$1, %edi
	call	exit
.L21:
	.loc 1 162 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mkfifo_с, .-mkfifo_с
	.section	.rodata
	.align 8
.LC12:
	.string	"from mknod_\321\201 path = %s,mode = %d, dev = %d errno = %d\n"
	.align 8
.LC13:
	.string	" st__if NOT equal STIF_ONE exit(1)"
	.text
	.globl	mknod_с
	.type	mknod_с, @function
mknod_с:
.LFB9:
	.loc 1 166 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 169 16
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 169 8
	testl	%eax, %eax
	je	.L27
.LBB4:
	.loc 1 171 17
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	mknod
	movl	%eax, -4(%rbp)
	.loc 1 172 12
	cmpl	$-1, -4(%rbp)
	jne	.L28
	.loc 1 174 24
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 174 16
	testl	%eax, %eax
	je	.L29
	.loc 1 176 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 177 110
	call	__errno_location
	.loc 1 177 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 178 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 179 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L29:
	.loc 1 181 24
	movl	24(%rbp), %eax
	andl	$2, %eax
	.loc 1 181 16
	testl	%eax, %eax
	je	.L30
	.loc 1 183 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 183 20
	testl	%eax, %eax
	je	.L31
	.loc 1 184 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L31:
	.loc 1 185 24
	movl	$-1, %eax
	jmp	.L32
.L30:
	.loc 1 187 29
	movl	24(%rbp), %eax
	andl	$4, %eax
	.loc 1 187 21
	testl	%eax, %eax
	je	.L33
	.loc 1 189 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 189 20
	testl	%eax, %eax
	je	.L34
	.loc 1 190 21
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
.L34:
	.loc 1 191 22
	call	__errno_location
	.loc 1 191 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L33:
	.loc 1 193 29
	movl	24(%rbp), %eax
	andl	$1, %eax
	.loc 1 193 21
	testl	%eax, %eax
	je	.L35
	.loc 1 195 28
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 195 20
	testl	%eax, %eax
	je	.L36
	.loc 1 196 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L36:
	.loc 1 197 24
	movl	-4(%rbp), %eax
	jmp	.L32
.L35:
	.loc 1 201 17
	movq	stderr(%rip), %rax
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 202 110
	call	__errno_location
	.loc 1 202 17
	movl	(%rax), %edi
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 203 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 204 17
	movl	$1, %edi
	call	exit
.L28:
	.loc 1 207 16
	movl	-4(%rbp), %eax
	jmp	.L32
.L27:
.LBE4:
	.loc 1 211 9
	movl	$.LC13, %edi
	call	perror
	.loc 1 212 9
	movl	$1, %edi
	call	exit
.L32:
	.loc 1 215 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mknod_с, .-mknod_с
	.section	.rodata
	.align 8
.LC14:
	.string	"from stat_\321\201 path = %s, errno = %d\n"
	.text
	.globl	stat_с
	.type	stat_с, @function
stat_с:
.LFB10:
	.loc 1 219 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	.loc 1 222 16
	movl	-52(%rbp), %eax
	andl	$1, %eax
	.loc 1 222 8
	testl	%eax, %eax
	je	.L38
.LBB5:
	.loc 1 224 17
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat
	movl	%eax, -4(%rbp)
	.loc 1 225 12
	cmpl	$-1, -4(%rbp)
	jne	.L39
	.loc 1 227 24
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 227 16
	testl	%eax, %eax
	je	.L40
	.loc 1 229 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 230 79
	call	__errno_location
	.loc 1 230 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 231 17
	movl	$.LC2, %edi
	call	perror
	.loc 1 232 17
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L40:
	.loc 1 234 24
	movl	16(%rbp), %eax
	andl	$2, %eax
	.loc 1 234 16
	testl	%eax, %eax
	je	.L41
	.loc 1 236 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 236 20
	testl	%eax, %eax
	je	.L42
	.loc 1 237 21
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L42:
	.loc 1 238 24
	movl	$-1, %eax
	jmp	.L43
.L41:
	.loc 1 240 29
	movl	16(%rbp), %eax
	andl	$4, %eax
	.loc 1 240 21
	testl	%eax, %eax
	je	.L44
	.loc 1 242 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 242 20
	testl	%eax, %eax
	je	.L45
	.loc 1 243 21
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
.L45:
	.loc 1 244 22
	call	__errno_location
	.loc 1 244 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	exit
.L44:
	.loc 1 246 29
	movl	16(%rbp), %eax
	andl	$1, %eax
	.loc 1 246 21
	testl	%eax, %eax
	je	.L46
	.loc 1 248 28
	movl	-48(%rbp), %eax
	andl	$2, %eax
	.loc 1 248 20
	testl	%eax, %eax
	je	.L47
	.loc 1 249 21
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L47:
	.loc 1 250 24
	movl	-4(%rbp), %eax
	jmp	.L43
.L46:
	.loc 1 254 17
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 255 79
	call	__errno_location
	.loc 1 255 17
	movl	(%rax), %ecx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 256 17
	movl	$.LC6, %edi
	call	perror
	.loc 1 257 17
	movl	$1, %edi
	call	exit
.L39:
	.loc 1 260 16
	movl	-4(%rbp), %eax
	jmp	.L43
.L38:
.LBE5:
	.loc 1 264 9
	movl	$.LC13, %edi
	call	perror
	.loc 1 265 9
	movl	$1, %edi
	call	exit
.L43:
	.loc 1 269 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	stat_с, .-stat_с
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/bits/types/struct_timespec.h"
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/12/include/stddef.h"
	.file 5 "/usr/include/bits/types/struct_FILE.h"
	.file 6 "/usr/include/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/usr/include/bits/struct_stat.h"
	.file 10 "/usr/include/sys/stat.h"
	.file 11 "/usr/include/stdlib.h"
	.file 12 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x86d
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF107
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.long	0x58
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x43
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x64
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x64
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x64
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xaf
	.byte	0x1d
	.long	0x64
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0x64
	.uleb128 0x4
	.long	.LASF20
	.byte	0x2
	.byte	0xc5
	.byte	0x21
	.long	0x64
	.uleb128 0x6
	.long	0x102
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x12
	.long	0x102
	.uleb128 0x6
	.long	0x109
	.uleb128 0xb
	.long	0x10e
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF22
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF23
	.uleb128 0xc
	.long	.LASF30
	.byte	0x10
	.byte	0x3
	.byte	0xb
	.long	0x14d
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3
	.byte	0x10
	.byte	0xc
	.long	0xcb
	.byte	0
	.uleb128 0x1
	.long	.LASF25
	.byte	0x3
	.byte	0x15
	.byte	0x15
	.long	0xf1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF28
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF29
	.uleb128 0xc
	.long	.LASF31
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.long	0x2f4
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xfd
	.byte	0x8
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xfd
	.byte	0x10
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xfd
	.byte	0x18
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xfd
	.byte	0x20
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xfd
	.byte	0x28
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xfd
	.byte	0x30
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xfd
	.byte	0x38
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xfd
	.byte	0x40
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xfd
	.byte	0x48
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xfd
	.byte	0x50
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xfd
	.byte	0x58
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x30d
	.byte	0x60
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x312
	.byte	0x68
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xb3
	.byte	0x78
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x317
	.byte	0x83
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x327
	.byte	0x88
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xbf
	.byte	0x90
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x331
	.byte	0x98
	.uleb128 0x1
	.long	.LASF55
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x33b
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF56
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x312
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0xd7
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x14d
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x340
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x16e
	.uleb128 0x18
	.long	.LASF108
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF62
	.uleb128 0x6
	.long	0x308
	.uleb128 0x6
	.long	0x16e
	.uleb128 0xe
	.long	0x102
	.long	0x327
	.uleb128 0xf
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x300
	.uleb128 0xd
	.long	.LASF63
	.uleb128 0x6
	.long	0x32c
	.uleb128 0xd
	.long	.LASF64
	.uleb128 0x6
	.long	0x336
	.uleb128 0xe
	.long	0x102
	.long	0x350
	.uleb128 0xf
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x2f4
	.uleb128 0xb
	.long	0x350
	.uleb128 0x13
	.long	.LASF65
	.byte	0x90
	.long	0x350
	.uleb128 0x13
	.long	.LASF66
	.byte	0x91
	.long	0x350
	.uleb128 0x4
	.long	.LASF67
	.byte	0x8
	.byte	0x3b
	.byte	0x11
	.long	0x6b
	.uleb128 0x4
	.long	.LASF68
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.long	0x9b
	.uleb128 0xc
	.long	.LASF69
	.byte	0x90
	.byte	0x9
	.byte	0x1a
	.long	0x456
	.uleb128 0x1
	.long	.LASF70
	.byte	0x9
	.byte	0x1f
	.byte	0xd
	.long	0x6b
	.byte	0
	.uleb128 0x1
	.long	.LASF71
	.byte	0x9
	.byte	0x24
	.byte	0xd
	.long	0x8f
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x9
	.byte	0x2c
	.byte	0xf
	.long	0xa7
	.byte	0x10
	.uleb128 0x1
	.long	.LASF73
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.long	0x9b
	.byte	0x18
	.uleb128 0x1
	.long	.LASF74
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.long	0x77
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF75
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x83
	.byte	0x20
	.uleb128 0x1
	.long	.LASF76
	.byte	0x9
	.byte	0x32
	.byte	0x9
	.long	0x58
	.byte	0x24
	.uleb128 0x1
	.long	.LASF77
	.byte	0x9
	.byte	0x34
	.byte	0xd
	.long	0x6b
	.byte	0x28
	.uleb128 0x1
	.long	.LASF78
	.byte	0x9
	.byte	0x39
	.byte	0xd
	.long	0xb3
	.byte	0x30
	.uleb128 0x1
	.long	.LASF79
	.byte	0x9
	.byte	0x3d
	.byte	0x11
	.long	0xd9
	.byte	0x38
	.uleb128 0x1
	.long	.LASF80
	.byte	0x9
	.byte	0x3f
	.byte	0x10
	.long	0xe5
	.byte	0x40
	.uleb128 0x1
	.long	.LASF81
	.byte	0x9
	.byte	0x4a
	.byte	0x15
	.long	0x126
	.byte	0x48
	.uleb128 0x1
	.long	.LASF82
	.byte	0x9
	.byte	0x4b
	.byte	0x15
	.long	0x126
	.byte	0x58
	.uleb128 0x1
	.long	.LASF83
	.byte	0x9
	.byte	0x4c
	.byte	0x15
	.long	0x126
	.byte	0x68
	.uleb128 0x1
	.long	.LASF84
	.byte	0x9
	.byte	0x59
	.byte	0x17
	.long	0x456
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0xf1
	.long	0x466
	.uleb128 0xf
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF69
	.byte	0xa
	.byte	0xcd
	.long	0x58
	.long	0x480
	.uleb128 0x3
	.long	0x113
	.uleb128 0x3
	.long	0x485
	.byte	0
	.uleb128 0x6
	.long	0x386
	.uleb128 0xb
	.long	0x480
	.uleb128 0x7
	.long	.LASF85
	.byte	0xa
	.value	0x194
	.long	0x58
	.long	0x4aa
	.uleb128 0x3
	.long	0x10e
	.uleb128 0x3
	.long	0x9b
	.uleb128 0x3
	.long	0x6b
	.byte	0
	.uleb128 0x7
	.long	.LASF86
	.byte	0xa
	.value	0x1a2
	.long	0x58
	.long	0x4c5
	.uleb128 0x3
	.long	0x10e
	.uleb128 0x3
	.long	0x9b
	.byte	0
	.uleb128 0x7
	.long	.LASF87
	.byte	0xa
	.value	0x185
	.long	0x58
	.long	0x4e0
	.uleb128 0x3
	.long	0x10e
	.uleb128 0x3
	.long	0x9b
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.byte	0xb
	.value	0x270
	.byte	0xd
	.long	0x4f3
	.uleb128 0x3
	.long	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF89
	.byte	0x7
	.value	0x164
	.long	0x58
	.long	0x50a
	.uleb128 0x3
	.long	0x10e
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x7
	.byte	0xe6
	.long	0x58
	.long	0x51f
	.uleb128 0x3
	.long	0x350
	.byte	0
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x7
	.value	0x324
	.byte	0xd
	.long	0x532
	.uleb128 0x3
	.long	0x10e
	.byte	0
	.uleb128 0x1b
	.long	.LASF110
	.byte	0xc
	.byte	0x25
	.byte	0xd
	.long	0x53e
	.uleb128 0x6
	.long	0x58
	.uleb128 0x7
	.long	.LASF91
	.byte	0x7
	.value	0x15e
	.long	0x58
	.long	0x55f
	.uleb128 0x3
	.long	0x355
	.uleb128 0x3
	.long	0x113
	.uleb128 0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF92
	.byte	0xa
	.byte	0xd2
	.long	0x58
	.long	0x579
	.uleb128 0x3
	.long	0x58
	.uleb128 0x3
	.long	0x480
	.byte	0
	.uleb128 0x9
	.long	.LASF99
	.byte	0xda
	.long	0x58
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x61b
	.uleb128 0x2
	.long	.LASF93
	.byte	0xda
	.byte	0x28
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"buf"
	.byte	0xda
	.byte	0x44
	.long	0x485
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF94
	.byte	0xda
	.byte	0x55
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF95
	.byte	0xda
	.byte	0x65
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF96
	.byte	0xda
	.byte	0x6f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF97
	.byte	0xda
	.byte	0x7b
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF98
	.byte	0xda
	.byte	0x87
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x8
	.string	"a"
	.byte	0xe0
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xa5
	.long	0x58
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cb
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa5
	.byte	0x1a
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF101
	.byte	0xa5
	.byte	0x27
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"dev"
	.byte	0xa5
	.byte	0x33
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF94
	.byte	0xa5
	.byte	0x44
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF95
	.byte	0xa5
	.byte	0x54
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF96
	.byte	0xa5
	.byte	0x5e
	.long	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.long	.LASF97
	.byte	0xa5
	.byte	0x6a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF98
	.byte	0xa5
	.byte	0x76
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x8
	.string	"a"
	.byte	0xab
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF102
	.byte	0x70
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x76c
	.uleb128 0x2
	.long	.LASF103
	.byte	0x70
	.byte	0x21
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF101
	.byte	0x70
	.byte	0x33
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF94
	.byte	0x70
	.byte	0x45
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF95
	.byte	0x70
	.byte	0x55
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF96
	.byte	0x70
	.byte	0x5f
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF97
	.byte	0x70
	.byte	0x6b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF98
	.byte	0x70
	.byte	0x77
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.string	"a"
	.byte	0x76
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF104
	.byte	0x61
	.long	0x58
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d1
	.uleb128 0x2
	.long	.LASF105
	.byte	0x61
	.byte	0x1a
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF101
	.byte	0x61
	.byte	0x2b
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF94
	.byte	0x61
	.byte	0x3d
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF95
	.byte	0x61
	.byte	0x4d
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"a"
	.byte	0x63
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.byte	0x2a
	.byte	0xb
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF106
	.byte	0x2a
	.byte	0x18
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"buf"
	.byte	0x2a
	.byte	0x2d
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF94
	.byte	0x2a
	.byte	0x3e
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF95
	.byte	0x2a
	.byte	0x4e
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF96
	.byte	0x2a
	.byte	0x58
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF97
	.byte	0x2a
	.byte	0x64
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF98
	.byte	0x2a
	.byte	0x70
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.string	"a"
	.byte	0x30
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"st_rdev"
.LASF110:
	.string	"__errno_location"
.LASF53:
	.string	"_offset"
.LASF48:
	.string	"_old_offset"
.LASF90:
	.string	"fflush"
.LASF50:
	.string	"_vtable_offset"
.LASF78:
	.string	"st_size"
.LASF68:
	.string	"mode_t"
.LASF86:
	.string	"mkfifo"
.LASF46:
	.string	"_fileno"
.LASF24:
	.string	"tv_sec"
.LASF43:
	.string	"_IO_save_end"
.LASF38:
	.string	"_IO_write_end"
.LASF13:
	.string	"__mode_t"
.LASF26:
	.string	"size_t"
.LASF108:
	.string	"_IO_lock_t"
.LASF83:
	.string	"st_ctim"
.LASF56:
	.string	"_freeres_list"
.LASF37:
	.string	"_IO_write_ptr"
.LASF32:
	.string	"_flags"
.LASF20:
	.string	"__syscall_slong_t"
.LASF101:
	.string	"mode"
.LASF70:
	.string	"st_dev"
.LASF47:
	.string	"_flags2"
.LASF39:
	.string	"_IO_buf_base"
.LASF94:
	.string	"file"
.LASF7:
	.string	"short int"
.LASF44:
	.string	"_markers"
.LASF34:
	.string	"_IO_read_end"
.LASF111:
	.string	"fstat_\321\201"
.LASF57:
	.string	"_freeres_buf"
.LASF103:
	.string	"file_path"
.LASF95:
	.string	"line"
.LASF102:
	.string	"mkfifo_\321\201"
.LASF85:
	.string	"mknod"
.LASF79:
	.string	"st_blksize"
.LASF61:
	.string	"FILE"
.LASF66:
	.string	"stderr"
.LASF27:
	.string	"long long int"
.LASF75:
	.string	"st_gid"
.LASF52:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF96:
	.string	"st__mo"
.LASF89:
	.string	"printf"
.LASF14:
	.string	"__nlink_t"
.LASF49:
	.string	"_cur_column"
.LASF109:
	.string	"perror"
.LASF91:
	.string	"fprintf"
.LASF88:
	.string	"exit"
.LASF67:
	.string	"dev_t"
.LASF31:
	.string	"_IO_FILE"
.LASF29:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF99:
	.string	"stat_\321\201"
.LASF71:
	.string	"st_ino"
.LASF25:
	.string	"tv_nsec"
.LASF6:
	.string	"signed char"
.LASF54:
	.string	"_codecvt"
.LASF28:
	.string	"long long unsigned int"
.LASF92:
	.string	"fstat"
.LASF4:
	.string	"unsigned int"
.LASF62:
	.string	"_IO_marker"
.LASF51:
	.string	"_shortbuf"
.LASF76:
	.string	"__pad0"
.LASF36:
	.string	"_IO_write_base"
.LASF60:
	.string	"_unused2"
.LASF100:
	.string	"mknod_\321\201"
.LASF33:
	.string	"_IO_read_ptr"
.LASF18:
	.string	"__blksize_t"
.LASF58:
	.string	"__pad5"
.LASF40:
	.string	"_IO_buf_end"
.LASF97:
	.string	"st__if"
.LASF21:
	.string	"char"
.LASF55:
	.string	"_wide_data"
.LASF98:
	.string	"st__re"
.LASF16:
	.string	"__off64_t"
.LASF104:
	.string	"mkdir_\321\201"
.LASF80:
	.string	"st_blocks"
.LASF82:
	.string	"st_mtim"
.LASF12:
	.string	"__ino_t"
.LASF81:
	.string	"st_atim"
.LASF74:
	.string	"st_uid"
.LASF105:
	.string	"dir_path"
.LASF22:
	.string	"float"
.LASF5:
	.string	"long unsigned int"
.LASF23:
	.string	"double"
.LASF17:
	.string	"__time_t"
.LASF106:
	.string	"fildes"
.LASF15:
	.string	"__off_t"
.LASF3:
	.string	"short unsigned int"
.LASF45:
	.string	"_chain"
.LASF64:
	.string	"_IO_wide_data"
.LASF9:
	.string	"__dev_t"
.LASF42:
	.string	"_IO_backup_base"
.LASF93:
	.string	"path"
.LASF84:
	.string	"__glibc_reserved"
.LASF59:
	.string	"_mode"
.LASF35:
	.string	"_IO_read_base"
.LASF30:
	.string	"timespec"
.LASF10:
	.string	"__uid_t"
.LASF41:
	.string	"_IO_save_base"
.LASF69:
	.string	"stat"
.LASF73:
	.string	"st_mode"
.LASF72:
	.string	"st_nlink"
.LASF87:
	.string	"mkdir"
.LASF107:
	.string	"GNU C17 12.2.1 20220819 (Red Hat 12.2.1-1) -mtune=generic -march=x86-64 -g"
.LASF19:
	.string	"__blkcnt_t"
.LASF65:
	.string	"stdout"
.LASF63:
	.string	"_IO_codecvt"
.LASF11:
	.string	"__gid_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/mipt/Clang/1.coffe_c/10_10_CoffeeFileStr/8_pic_rect_myvar_cpjs"
.LASF0:
	.string	"lib/sys_stat_1.c"
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
