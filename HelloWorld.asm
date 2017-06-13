global _start


section .text
_start:
    
    ; print hello_world

    ; RAX -> System Call Number
    ; Arguments stream: RDI, RSI, RDX, R10, R8, R9

    ; System call Numbers -> /usr/include/x86_64-linux-gnu/asm/unistd_32.h (or 64)

    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdx, length_hello_world
    syscall

    ; return and exit successfully
    mov rax, 60
    mov rdi, 0
    syscall


section .data
    hello_world: db 'Hello Assembly (Intel X64) world from 0xBart', 0xa
    length_hello_world: equ $-hello_world
