    ; JQ22003

section .text

global _start

_start: 

    mov     al,  [x]
    sub     al,  '0'
    mov     bl,  [y]
    sub     bl,  '0'
    mul     bl
    add     al,  '0'

    mov     [product],  al

    mov     ecx,  msg
    mov     edx,  len
    mov     ebx,  1
    mov     eax,  4
    int     0x80

    mov     ecx,  product
    mov     edx,  1
    mov     ebx,  1
    mov     eax,  4
    int     0x80

    mov     eax,  1
    int     0x80

section .data
    x db '5'
    y db '3'
    msg db  "Product of x and y is "
    len equ $ - msg

segment .bss

    product resb 1
