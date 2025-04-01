.data

	mensaje: .asciiz "Introduce un numero: "
	mensajeMay: .asciiz "\nEl numero introducido es mayor que 44."
	mensajeMen: .asciiz "\nEl numero introducido es menor que 44."

.text


	li $t0, 44


	li $v0, 4
	la $a0, mensaje
	syscall

	li $v0,5
	syscall
	move $t1, $v0

	slt $t2,$t1,$t0
	
	
	beq $t2, 1, menor

	li $v0, 4
	la $a0, mensajeMay
	syscall
	
	j fin
	
menor:

	li $v0, 4
	la $a0, mensajeMen
	syscall

fin:

	li $v0, 10
	syscall
	