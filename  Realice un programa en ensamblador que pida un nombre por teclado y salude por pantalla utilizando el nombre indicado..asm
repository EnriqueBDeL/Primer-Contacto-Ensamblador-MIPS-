.data

insertar: .asciiz "Introduce un nombre: "
saludo:  .asciiz "Hola, "

.text

li $v0, 4
la $a0, insertar
syscall

li $v0, 8
la $a0, saludo+6 #6 son el numero de caracteres de saludo (incluye el espacio)
li $a1, 50 #Lee una cadena de hasta 50 caracteres
syscall

li $v0, 4
la $a0, saludo
syscall