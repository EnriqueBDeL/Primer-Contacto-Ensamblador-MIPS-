.data
    mensaje: .asciiz "\nIntroduce un numero: "
    mensaje2: .asciiz "\nNumeros introducidos: "
    salto: .asciiz "\n"
    array: .word 0, 0, 0, 0, 0

.text
    li $t0, 0
    la $t2, array

loop:
    beq $t0, 5, imprimir

    li $v0, 4
    la $a0, mensaje
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    sw $t1, ($t2)
    addi $t2, $t2, 4

    addi $t0, $t0, 1
    j loop

imprimir:
    li $v0, 4
    la $a0, mensaje2
    syscall

    li $t0, 0
    la $t2, array

imprimir3:
    beq $t0, 5, fin

    lw $t1, ($t2)
    addi $t2, $t2, 4

    li $v0, 4
    la $a0, salto
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    addi $t0, $t0, 1
    j imprimir3

fin:
    li $v0, 10
    syscall
