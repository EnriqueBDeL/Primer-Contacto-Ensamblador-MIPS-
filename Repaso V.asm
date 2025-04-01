.data 

	array: .word 1,2,3,4,5,6,7,8,9,10
	coma: .asciiz ","

.text


	li $t0, 10
	li $t1, 0
	la $t2, array
	
loop:  

	beq $t1, $t0, fin
	
	lw $t3, ($t2)
	addi $t2, $t2, 4
	
	
	
	
	li $v0, 1
    	move $a0, $t3
    	syscall

   	li $v0, 4
    	la $a0, coma
    	syscall


	addi $t1, $t1, 1
	
	j loop
fin:


	li $v0, 10
	syscall
	