.global _start
.align 2

_start: 
    mov X0, #1
    adr X1, helloworld
    mov X2, #13
    mov X8, #64
    svc #0

    mov X0, #0
    mov X8, #93
    svc #0

helloworld:
    .asciz "Hello World!\n"
