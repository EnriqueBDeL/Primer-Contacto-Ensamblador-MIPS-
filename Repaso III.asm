.data 

	mensaje: .asciiz "Introduce un numero: "

.text

	li $t0, 444
	
loop:
	
	li $v0, 4
	la $a0, mensaje
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0 
	
	bne $t2, $t0, loop
	
	li $v0, 10
	syscall
	