#1

.data

	Array: .word 23,43,22,34,56,12
	mensaje: .asciiz "\nEl valor  maximo es: "
		mensaje2: .asciiz "\nEl valor  minimo es: "
	

.text

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

	li $v0, 10
	syscall
