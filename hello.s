.global _start

_start:
  mov $1, %rax
  mov $1, %rdi
  mov $msg, %rsi
  mov $14, %rdx
  syscall

  mov $0x0a31, %r10
  mov $count, %rsi

  loop:
    mov %r10, (%rsi)

    mov $1, %rax
    mov $1, %rdi
    mov $count, %rsi
    mov $2, %rdx
    syscall

    add $1, %r10

    cmp $0x0a34, %r10
    jl loop

  mov $60,%rax
  mov $0,%rdi
  syscall

msg:
  .ascii "Hello, world!\n"

# Allocate loop counter
.lcomm count 8
