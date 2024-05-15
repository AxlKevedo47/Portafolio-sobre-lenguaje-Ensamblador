section .text

global _start

_start: 

    ; Subtract three integers
    mov ax, [x]
    sub ax, [y]
    sub ax, [z]

    ; Store the result in sum
    mov [sum], ax

    ; Exit the program
    mov eax, 1
    int 0x80

section .data
    x dw 5
    y dw 3
    z dw 2

segment .bss
    sum resw 1
