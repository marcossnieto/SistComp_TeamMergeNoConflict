.code16
.globl _start
_start:
    xorw %ax, %ax
    movw %ax, %ds
    movw %ax, %es
    movw $msg, %si
    movb $0x0e, %ah
loop:
    lodsb
    orb %al, %al
    jz halt
    int $0x10
    jmp loop
halt:
    hlt
    jmp halt
msg:
    .asciz "Hello World"