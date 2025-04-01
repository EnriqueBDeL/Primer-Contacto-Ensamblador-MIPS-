.data 

	mensaje: .asciiz "\nLa suma da: "
	mensaje2: .asciiz "\nLa resta da: "

.text

	li $t0,1
	li $t1,2
	
	
	
	
	add $t3, $t0, $t1
	
	li $v0, 4
	la $a0, mensaje
	syscall 
	
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	
	sub $t3,$t1,$t0
	
	li $v0, 4
	la $a0, mensaje2
	syscall 
	
	
	li $v0, 1
	move $a0, $t3
	syscall
	

	li $v0, 10
	syscall