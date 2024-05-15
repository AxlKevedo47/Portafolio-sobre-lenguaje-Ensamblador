section .text

global _start

_start: 

    ; Load the dividend and divisor into the eax and ebx registers
    mov eax, 100
    mov ebx, 20

    ; Perform the division
    idiv ebx

    ; The quotient is in eax, and the remainder is in edx
    ; You can print them out if you want

    ; Exit the program
    mov eax, 1
    int 0x80
