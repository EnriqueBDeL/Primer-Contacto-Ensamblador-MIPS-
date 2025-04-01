.data 

	mensaje: .asciiz "\nIntroduce un caracter: "

.text

	li $t0, 68
	li $t1, 0
	
loop:
	
	li $v0, 4
	la $a0, mensaje
	syscall
	
	li $v0, 12
	syscall
	move $t2, $v0 
	
	bne $t2, $t0, loop
	
	li $v0, 10
	syscall
	