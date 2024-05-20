;escribir un programa para dividir 2 enteros
;usando registros de 32bits
;ag22046

section .data
    ; Definir los dos números enteros de 32 bits
    num1 dd 100
    num2 dd 4

section .text
    global _start

_start:
    ; Cargar los valores de los números en registros de 32 bits
    mov eax, [num1]
    mov ebx, [num2]

    ; Realizar la división
    div ebx

    ; El resultado se almacena en EAX (cociente) y EDX (residuo)

    ; Convertr el cociente a su representación ASCII
    add eax, '0'

    ; Almacenar el cociente en un registro de 32 bits
    mov [resultado], eax

    ; Imprimir el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    ; Salida del programa
    mov eax, 1
    mov ebx, 0
    int 0x80

section .bss
    resultado resb 1
