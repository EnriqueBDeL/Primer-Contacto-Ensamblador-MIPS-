.data

numero1: .asciiz "Ingrese el primer numero: " 
numero2: .asciiz "Ingrese el segundo numero: " 
resultado: .asciiz "La suma es: " 

.text

#Solicita el primer numero
li $v0, 4
la $a0, numero1
syscall

li $v0,5
syscall

move $t0, $v0


#Solicita el segundo numero
li $v0, 4
la $a0, numero2
syscall

li $v0,5
syscall

move $t1, $v0

#Suma
add $t2, $t0, $t1

#Imprimir resultado de la suma

li $v0,4
la $a0, resultado
syscall

move $a0, $t2
li $v0, 1
syscall

