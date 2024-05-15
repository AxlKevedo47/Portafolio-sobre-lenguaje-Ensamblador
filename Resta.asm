    ; JQ22003
section .data
    num1 db 10
    num2 db 5
    num3 db 2

section .text
    global _start

_start:
    mov al, [num1]
    sub al, [num2]
    sub al, [num3]

    ; Imprime los Resultados
    mov [result], al
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    result db 0