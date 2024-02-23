.data

mensaje: .asciiz "\nDigite la tecla 'q' para terminar o cualquier otra tecla si desea continuar: "

.text

loop:
  
    li $v0, 4
    la $a0, mensaje
    syscall

    li $v0,12
    syscall
    move $t0, $v0

    li $t2, 'q'        
    beq $t0, $t2, end 

    j loop
 
end:      

    li $v0, 10          
    syscall
