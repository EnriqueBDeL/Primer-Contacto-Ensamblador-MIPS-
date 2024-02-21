
.data

variable1: .asciiz "Hello World\n"
variable2: .asciiz "Mi primer codigo\n"
meternumero: .asciiz "\nIntroduzca un numero: "
imprimirnumero: .asciiz "\nEl numero introducido es: "
textosuma: .asciiz "\nLa suma es : "

.text


#Imprimie Hello World
li $v0, 4     
la $a0, variable1
syscall


#Imprimir entero
li $v0, 1
li $a0, 3
syscall

#-------------------------------------------------------------------------------------

#Dice de introducir un numero
li $v0, 4 
la $a0, meternumero
syscall

li $v0, 5
syscall
move $t0, $v0 


#Imprime el numero introducido
li $v0, 4 
la $a0, imprimirnumero
syscall

move $a0, $t0
li $v0,1
syscall

#-------------------------------------------------------------------------------------

#Dice de introducir un numero2
li $v0, 4 
la $a0, meternumero
syscall

li $v0, 5
syscall
move $t1, $v0 


#Imprime el numero2 introducido
li $v0, 4 
la $a0, imprimirnumero
syscall

move $a0, $t1
li $v0,1
syscall

#-------------------------------------------------------------------------------------

#Suma
li $v0, 4     
la $a0, textosuma #Imprime el texto de la suma
syscall


add $a0, $t1, $t0 #Hace la suma
li $v0, 1
syscall #Muesra el resultado de la suma


