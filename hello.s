.global	_start

_start:
  # write(stdout, msg, 14)
  mov $1, %rax # sys_write
  mov $1, %rdi # stdout
  mov $msg, %rsi # string buffer
  mov $14, %rdx # length of string
  syscall
  
  # exit(0)
  mov $60,%rax # exit
  mov $0,%rdi # exit code 0
  syscall

msg:
  .ascii "Hello, world!\n"
