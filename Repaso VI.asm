.data 
    A: .word 1,2,3,4,5,6,7,8,9,10
    B: .word 10,9,8,7,6,5,4,3,2,1
    C: .word 0,0,0,0,0,0,0,0,0,0
    coma: .asciiz ", "

.text

    li $t0, 10
    li $t1, 0
    la $t2, A
    la $t4, B
    la $t6, C

loop:  
    beq $t1, $t0, imprimir

    lw $t3, ($t2)
    addi $t2, $t2, 4

    lw $t5, ($t4)
    addi $t4, $t4, 4

    sub $t7, $t5, $t3

    sw $t7, ($t6)
    addi $t6, $t6, 4

    addi $t1, $t1, 1
    j loop

imprimir:
    li $t1, 0
    la $t6, C

imprimir_loop:
    beq $t1, $t0, fin

    lw $a0, ($t6)
    li $v0, 1
    syscall

    li $t8, 9
    beq $t1, $t8, quitar_coma

    li $v0, 4
    la $a0, coma
    syscall

quitar_coma:
    addi $t6, $t6, 4
    addi $t1, $t1, 1
    j imprimir_loop

fin:
    li $v0, 10
    syscall
