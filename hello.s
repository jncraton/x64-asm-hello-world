.global _start

_start:
  mov $1, %rax
  mov $1, %rdi
  mov $msg, %rsi
  mov $14, %rdx
  syscall

  mov $count, %rsi
  mov $0x0a31, (%rsi)

  loop:
    mov $1, %rax
    mov $1, %rdi
    mov $2, %rdx
    syscall

    add $1, (%rsi)

    cmp $0x0a34, (%rsi)
    jl loop

  mov $60,%rax
  mov $0,%rdi
  syscall

msg:
  .ascii "Hello, world!\n"

# Allocate loop counter
.lcomm count 8
