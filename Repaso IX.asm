.data

	mensaje: .asciiz "\nIngrese un numero: "
	mensaje2: .asciiz "\nValores guardados en pila:\n"
	espacio: .asciiz "\n"

.text

li $t0, 0
li $t1, 3 #numero bucle
li $t2, 0 #contador

li $t3, 0 #contador 2
li $t4, 0


inserccion:

	beq $t2,$t1,impresion


	li $v0, 4
	la $a0, mensaje
	syscall

	li $v0, 5
	syscall
	move $t0,$v0
	
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	
	
	addi $t2, $t2, 1

	j inserccion
	
	
impresion:

	li $v0, 4
	la $a0, mensaje2
	syscall
	
impresion_numeros:

	beq $t3,$t1,fin

	lw $t4, 8($sp)
	
	addi $sp, $sp, -4
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	
	li $v0, 4
	la $a0, espacio
	syscall
	
	addi $t3, $t3, 1
	
	j impresion_numeros
	
fin: 

	li $v0, 10
	syscall
	