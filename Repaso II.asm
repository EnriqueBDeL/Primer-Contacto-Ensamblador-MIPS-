.data 

	mensaje: .asciiz "\nEl numero de bucles es: "

.text

	li $t0, 10
	li $t1, 0
	
loop:

	beq $t1, $t0, fin
	
	add $t1, $t1, 1
	
	j loop
	
fin:

	li $v0, 4 
	la $a0, mensaje
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 10
	syscall