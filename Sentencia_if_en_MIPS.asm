
#Funcionamiento del codigo:
# if(n == 14){
#  printf("El numero introducido es correcto.");
#  }else{
#    printf("El numero introducido no es correcto.");
#   }

.data

	mensaje: .asciiz "\nIntroduce un numero: "
	mensaje2: .asciiz "\nEl numero introducido es correcto."
	mensaje3: .asciiz "\nEl numero introducido no es correcto."

.text

	li $t0,14 #Numero que debe ser igual al introducido

loop:

	li $v0, 4 #'4' sirve para imprimir el mensaje
	la $a0, mensaje
	syscall


	li $v0, 5 #'5' sirve para leer el numero introducido
	syscall
	move $t1, $v0 #Guarda el numero introducido en '$t0'

	beq $t1,$t0,iguales
	
	li $v0, 4 
	la $a0, mensaje3
	syscall

j loop


iguales:

	li $v0, 4
	la $a0, mensaje2
	syscall
	
	
	li $v0, 10          
   	syscall