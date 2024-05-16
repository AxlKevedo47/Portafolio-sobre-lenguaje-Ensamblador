En este Documente se registran las Acciones del como se realizo a Proceder cada uno de los 3 interrogantes

Aclaración del proceder, se utilizo la Inspiración y de paso son videos de repaso y adaptacion
- https://www.youtube.com/watch?v=AuZyVVBlwS4 
- https://www.youtube.com/watch?v=4OP8p0owPUQ&list=PL0A750AC6626E5EFA&index=7

Ejercicio 01.

Explicación del código:

Sección de datos:
num1, num2 y num3 se definen como bytes simples (db) que contienen los valores iniciales (10, 5 y 2, respectivamente).
result también se define como un byte simple (db) para almacenar el cálculo final.
Sección de texto:
_start es el punto de entrada del programa.
mov al, [num1] carga el valor de num1 en el registro acumulador (AL).
sub al, [num2] resta el valor de num2 de AL.
sub al, [num3] resta aún más el valor de num3 de AL, lo que da como resultado num1 - num2 - num3.
Impresión del resultado:
mov [result], al almacena el valor calculado en AL en la variable result.
Preparación de la llamada al sistema:
mov eax, 4 establece el número de llamada al sistema para escribir en la salida estándar (STDOUT).
mov ebx, 1 establece el descriptor de archivo para STDOUT (generalmente 1).
mov ecx, result establece la dirección de los datos que se van a imprimir (result).
mov edx, 1 establece el número de bytes que se van a imprimir (1 byte).
int 0x80 invoca la llamada al sistema para imprimir el valor en result.
Salir del programa:
mov eax, 1 establece el número de llamada al sistema para salir del programa.
xor ebx, ebx establece EBX en cero (a menudo se usa como un código de salida de 0 para indicar una ejecución exitosa).
int 0x80 invoca la llamada al sistema para salir del programa

Ejercicio 02.


README en español
Nombre del proyecto: Multiplicación de dos dígitos (o un nombre más descriptivo)

Lenguaje: Lenguaje ensamblador (para arquitectura Intel x86)

Descripción:

Este programa de lenguaje ensamblador realiza una multiplicación simple de dos dígitos predefinidos (x e y). Lee los valores de dos variables (x e y) como caracteres ASCII que representan dígitos, los convierte en números enteros, calcula su producto y lo imprime en la salida estándar.

Instrucciones:

Ensamblado:

Necesitará un ensamblador compatible con la arquitectura Intel x86 (por ejemplo, NASM, MASM).
Guarde el código como un archivo .asm (por ejemplo, multiplicacion.asm).
Ensamblado (sistemas Linux/Unix):

Use el siguiente comando para ensamblar el código:
Bash
nasm -f elf multiplicacion.asm -o multiplicacion.o
Usa el código con precaución.
content_copy
Este comando ensambla el código (multiplicacion.asm) en un archivo objeto (multiplicacion.o) utilizando NASM (reemplace nasm con su ensamblador si es diferente).

Enlace (sistemas Linux/Unix):

Enlace el archivo objeto con la biblioteca C estándar (libc) para crear un ejecutable:
Bash
gcc multiplicacion.o -o multiplicacion -lc
Usa el código con precaución.
content_copy
Este comando enlaza el archivo objeto (multiplicacion.o) con libc (-lc) para producir el ejecutable (multiplicacion).

Ejecución del programa:

Ejecute el programa generado:
Bash
./multiplicacion
Usa el código con precaución.
content_copy
Explicación del código:

Sección de texto (_start):
mov al, [x] carga el valor del byte en x en el registro acumulador (AL).
sub al, '0' resta el valor del código ASCII del carácter '0' de AL para obtener el valor numérico del dígito.
mov bl, [y] carga el valor del byte en y en el registro BL.
sub bl, '0' resta el valor del código ASCII del carácter '0' de BL para obtener el valor numérico del dígito.
mul bl multiplica el valor en AL por el valor en BL y almacena el resultado en ambos registros (AL y AX).
add al, '0' suma el código ASCII del carácter '0' a AL para convertir el resultado de la multiplicación a un carácter ASCII que represente el dígito de las unidades del producto.
Almacenamiento del resultado:
mov [product], al almacena el dígito de las unidades del producto en la variable product.
Impresión del mensaje:
Se preparan los registros para la llamada al sistema de escritura (número de llamada, descriptor de archivo, dirección del mensaje y longitud del mensaje).
int 0x80 invoca la llamada al sistema para imprimir el mensaje "Product of x and y is " en la salida estándar.
Impresión del producto:
Se preparan los registros para la llamada al sistema de escritura (número de llamada, descriptor de archivo, dirección del producto y longitud de 1 byte).
int 0x80 invoca la llamada al sistema para imprimir el dígito de las unidades del producto en la salida estándar.
Salida del programa:
mov eax, 1 establece el número de llamada al sistema para salir del programa.
int 0x80 invoca la llamada al sistema para salir del programa.
Sección de datos:
x db '5' define una variable x con el carácter '5'.
y db '3' define una variable y con el carácter '3'.
msg db "Product of x and y is " define un mensaje a imprimir.
len equ $ - msg calcula la longitud del mensaje.
Segmento BSS:
product resb 1 reserva 1 byte para almacenar el dígito de las unidades del producto.

Ejercicio 03.

Explicación del código:

Sección de datos:
dividend db 10 define una variable dividend con el valor decimal 10 (almacenado como byte).
divisor db 2 define una variable divisor con el valor decimal 2 (almacenado como byte).
result db 0 define una variable result para almacenar el cociente de la división (inicializada a 0).
Sección de texto (_start):
mov al, [dividend] carga el valor del dividendo de la memoria (variable dividend) en el registro AL.
mov bl, [divisor] carga el valor del divisor de la memoria (variable divisor) en el registro BL.
div bl divide el valor en AX (registros combinados AL y AH) por el valor en BL. El cociente se almacena en AL y el resto en AH (en este caso, no se usa el resto).
mov [result], al almacena el cociente (en AL) en la variable result.
Impresión del resultado:
Se preparan los registros para la llamada al sistema de escritura (número de llamada, descriptor de archivo, dirección del resultado y longitud de 1 byte).
int 0x80 invoca la llamada al sistema para imprimir el valor en result (cociente de la división) en la salida estándar.
Salida del programa:
mov eax, 1 establece el número de llamada al sistema para salir del programa.
xor ebx, ebx establece EBX a cero (a menudo se usa como un código de salida de 0 para indicar una ejecución exitosa).
int 0x80 invoca la llamada al sistema para salir del programa.
