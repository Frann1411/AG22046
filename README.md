--Franklin Giovanny Avila González.

--En este repositorio se presentan las soluciones para los ejercicios asignados 
en la guia de ejercicios de la semana 10, agrego los archivos .asm y archivos .txt, por cada ejercicio.

--Resta de 3 enteros usando registros de 16 bits:
Este código en lenguaje ensamblador realiza la resta de tres números enteros de 8 bits,
los cuales están definidos en la sección .data. Utilizando registros de 8 bits, se cargan los valores
y se efectúa la resta sucesiva, almacenando el resultado en un registro de 16 bits.
Posteriormente se convierte este resultado en su representación ASCII, 
se almacena en una variable resultado y se imprime en la consola utilizando una llamada al sistema sys_write. 
Finalmente, el programa termina con una llamada al sistema sys_exit, indicando una salida exitosa.

--Multiplicacion de dos numeros enteros usando registros de 8 bits:
En el código comienzo definiendo los dos números enteros de 8 bits num1 y num2. 
Luego, en la sección .text se carga cada número en registros de 8 bits AL y BL respectivamente.
Después, se realiza la multiplicación de AL por BL utilizando la instrucción mul,
y el resultado se almacena en el registro de 16 bits AX
donde la parte baja contiene el resultado y la parte alta puede contener el acarreo.
Se convierte el resultado en su representación ASCII sumando el valor ASCII de '0' a AX.
luego se almacena el resultado en la variable resultado definida en la sección .bss
Se utiliza la llamada al sistema sys_write para imprimir el resultado en la consola y
luego se utiliza la llamada al sistema sys_exit para terminar el programa con un código de salida 0,
indicando que la ejecución fue exitosa.

--Division de 2 numero enteros usando registros de 32 bits:
comienzo definiendo los dos números enteros de 32 bits num1 y num2.
Luego, en la sección .text, los valores de estos números se cargan en registros de 32 bits EAX y EBX, respectivamente. 
Luego, se realiza la división de EAX por EBX utilizando la instrucción div, y el cociente se almacena en EAX y el residuo en EDX.
A continuación el cociente se convierte en su representación ASCII sumando el valor ASCII de '0' a EAX.
Luego el cociente convertido se almacena en la variable resultado definida en la sección .bss
Se utiliza la llamada al sistema sys_write para imprimir el resultado en la consola 
y luego se utiliza la llamada al sistema sys_exit para terminar el programa con un código de salida 0,
indicando que no hubo errores en ejecucion.
