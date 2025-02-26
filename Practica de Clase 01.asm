.data

source: .asciiz "hola hola"
destiny: .space 50
mensaje: .asciiz "La cadena original era: "
mensaje2: .asciiz "\nLa cadena en mayúsculas es: "

.text


    la $s0, source
    la $s1, destiny

bucle:

    lb $s2, 0($s0)
    beq $s2, $zero, casifin
    
    li $t0, 97
    li $t1, 122

    blt $s2, $t0, noConvertir
    bgt $s2, $t1, noConvertir

    li $t6, 32
    sub $s2, $s2, $t6

#---------------------------------

noConvertir:

    sb $s2, 0($s1)
    addi $s0, $s0, 1
    addi $s1, $s1, 1
    j bucle

#---------------------------------

casifin:

    la $a0, mensaje
    li $v0, 4
    syscall

    la $a0, source
    li $v0, 4
    syscall

    la $a0, mensaje2
    li $v0, 4
    syscall

    la $a0, destiny
    li $v0, 4
    syscall

    li $v0, 10
    syscall
