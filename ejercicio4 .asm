.data

	menu: .asciiz "\n\n\nMENU:"
	op1: .asciiz "\n1. Ejercicio1."
	op2: .asciiz "\n2. Ejercicio2."
	op3: .asciiz "\n3. Ejercicio3."
	sal: .asciiz "\n0. Salir."
	
	mensajem: .asciiz "\n\nIntorcue una opcion (1,2,3 o 0): "
	


	#ejercicioo1
	
		
	#EJERCICIO1
	
	Array: .word 23,43,22,34,56,12
	mensaje: .asciiz "\nEl valor  maximo es: "
		mensaje2: .asciiz "\nEl valor  minimo es: "
		
		
		
	#EJERCCIO2
	
	mensajeE2: .asciiz "\nIntroduce un numero: "


.text

loop_menu:

	li $v0, 4
	la $a0, menu
	syscall

	li $v0, 4
	la $a0, op1
	syscall
	
	li $v0, 4
	la $a0, op2
	syscall
	
	li $v0, 4
	la $a0, op3
	syscall
	
	li $v0, 4
	la $a0, sal
	syscall
	
	li $v0, 4
	la $a0, mensajem
	syscall
	
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	
	beq $t0, 1, ejercicio1
	beq $t0, 2, ejercicio2
	beq $t0, 3, ejercicio3 
	beq $t0, 0, final_menu
	

	j loop_menu
	
#-----------------------------------------------------------	
ejercicio1:


	li $t0, 0 #contador
	la $t1, Array
	
	li $t5, 0 #max
	li $t6, 0 #min

loop:

	beq $t0, 6, fin
	
	lw $t3, ($t1)
	addi $t1, $t1, 4
	
	
	
	slt $t4, $t3, $t5
	
	beq $t4, 1, min

	move $t5,$t3

	addi $t0, $t0, 1
	j loop
			
min:

	slt $t4, $t3,  $t6
	
	beq $t4, 1, menor
	
	j contiuar_loop
	
menor:

	move $t6, $t3
	
	
contiuar_loop:	
	
	addi $t0, $t0, 1
	
	j loop
	
	
	
fin:

	li $v0, 4
	la $a0, mensaje
	syscall

	li $v0,1 
	move $a0, $t5
	syscall
	
	li $v0, 4
	la $a0, mensaje
	syscall
	
	li $v0,1 
	move $a0, $t6
	syscall
		j loop_menu
#-----------------------------------------------------------
ejercicio2:





	li $t0, 0
	li $t1, 0
	
	li $t6, 100
	li $t7, 200
	li $t5, 300
	li $t4,0

		

li $t1, 0
li $t4,0


	li $v0, 4
	la $a0, mensajeE2
	syscall
	
	li $v0, 5
	syscall
	move $t0,$v0
	


	beq $t0, 1, alamcena_100
		beq $t0, 2, alamcena_200
			beq $t0, 3, alamcena_300
			
		subi $t4, $t4,1
			move $t1, $t4
			
	li $v0, 1
	move $a0, $t1
	syscall
	
		j loop_menu
	
alamcena_100:


	move $t1, $t6

	li $v0, 1
	move $a0, $t1
	syscall
	

		j loop_menu
	
alamcena_200:

	move $t1, $t7
	
	li $v0, 1
	move $a0, $t1
	syscall
	
		j loop_menu


alamcena_300:

	move $t1, $t5
	
	li $v0, 1
	move $a0, $t1
	syscall


	j loop_menu


		j loop_menu
#-----------------------------------------------------------
ejercicio3 :
	
	
		j loop_menu
#-----------------------------------------------------------	
final_menu: 

	li $v0, 10
	syscall