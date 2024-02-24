.data

A: .word 1, 2, 3, 4, 5, 6, 7 
s: .word 0 # Variable para guardar el resultado
suma: .asciiz "El resultado de la suma de todos los valores del vector es: "

.text

    la $t0, A 
    li $t1, 7 
    li $t2, 0 
    li $t3, 0 
loop:

    beq $t2, $t1, end 
    lw $t4, 0($t0) 
    
    add $t3, $t3, $t4 
    
    addi $t0, $t0, 4
    
    addi $t2, $t2, 1 
    
    j loop
    
end:
   	la $t5, s 
   	sw $t3, 0($t5) 
    
    
    	li $v0, 4
    	la $a0, suma
    	syscall
    
   	move $a0, $t3 
	li $v0, 1 
	syscall
    
    
  	 li $v0, 10 
   	 syscall 
