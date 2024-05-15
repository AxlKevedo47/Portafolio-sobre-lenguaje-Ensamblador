    ; JQ22003
section .data
    dividend db 10
    divisor db 2
    result db 0

section .text
    global _start

_start:
    mov al, [dividend]
    mov bl, [divisor]

    ; Divide AX by BX
    div bl


    mov [result], al

 
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

   
    mov eax, 1
    xor ebx, ebx
    int 0x80