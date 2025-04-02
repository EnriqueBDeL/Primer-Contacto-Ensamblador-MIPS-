#2

.data


	mensaje: .asciiz "\nIntroduce un numero: "
	

	
	

.text


	li $t0, 0
	li $t1, 0
	
	li $t6, 100
	li $t7, 200
	li $t5, 300
	li $t4,0

		
loop:

li $t1, 0
li $t4,0


	li $v0, 4
	la $a0, mensaje
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
	
	j loop
	
alamcena_100:


	move $t1, $t6

	li $v0, 1
	move $a0, $t1
	syscall
	

	j loop
	
alamcena_200:

	move $t1, $t7
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	j loop


alamcena_300:

	move $t1, $t5
	
	li $v0, 1
	move $a0, $t1
	syscall

	j loop


