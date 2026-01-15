.section .data
msg: .ascii "Hello, world!\n"

.section .text
.global _start

_start:
  movq $1, %rax
  movq $1, %rdi
  movq $msg, %rsi
  movq $14, %rdx
  syscall

  pushq $0x0a31

  loop:
    movq $1, %rax
    movq $1, %rdi
    movq %rsp, %rsi
    movq $2, %rdx
    syscall

    addq $1, (%rsi)

    cmpq $0x0a34, (%rsi)
    jl loop

  movq $60, %rax
  movq $0, %rdi
  syscall
