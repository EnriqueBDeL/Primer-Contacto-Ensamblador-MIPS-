.data

	A: .word 1,2,3,4,5,6,7

.text

	li $t0, 7 # numero elementos
	li $t1, 0 #contador
	li $t2, 0 #resultado
	la $t3, A
	
loop:

	beq $t1, $t0, almacenar
	
	lw $t4, 0($t3)
	addi $t3, $t3, 4
	
	add $t2, $t2, $t4
	
	addi $t1, $t1,1
	j loop
	
almacenar:

	addi $sp, $sp, -4
	sw $t2, ($sp)

	
fin:


	lw $t6, ($sp)
	addi $sp, $sp, 4 

	li $v0, 1
	move $a0, $t6
	syscall




	li $v0, 10
	syscall

	