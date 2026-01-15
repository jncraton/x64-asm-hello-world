.global _start

_start:
  movq $1, %rax
  movq $1, %rdi
  movq $msg, %rsi
  movq $14, %rdx
  syscall

  movq $count, %rsi
  movq $0x0a31, (%rsi)

  loop:
    movq $1, %rax
    movq $1, %rdi
    movq $2, %rdx
    syscall

    addq $1, (%rsi)

    cmpq $0x0a34, (%rsi)
    jl loop

  movq $60,%rax
  movq $0,%rdi
  syscall

msg:
  .ascii "Hello, world!\n"

# Allocate loop counter
.lcomm count 8
