;escribir un programa para restar 3 enteros
;usando solo registros de 16bits
;ag22046

section .data
    ; Definir los 3 enteros de 8 bits
    num1 db 10
    num2 db 3
    num3 db 2

section .text
    global _start

_start:
    ; Cargar los valores de los enteros en registros de 16 bits
    mov al, [num1]
    mov bl, [num2]
    mov cl, [num3]

    ; Realiza la resta
    sub ax, bx
    sub ax, cx

    ; Convertir el resultado en su representación ASCII
    add ax, '0'

    ; Almacenar el resultado en un registro de 16 bits
    mov [resultado], ax

    ; Imprimir el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    ; Salir del programa
    mov eax, 1
    mov ebx, 0
    int 0x80

section .bss
    resultado resb 1