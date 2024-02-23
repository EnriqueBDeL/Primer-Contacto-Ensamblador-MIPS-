.data

mensaje: .asciiz "\nDigite el numero a sumar o un numero negativo para terminar: "
suma: .asciiz "\nLa suma es: "

.text

li $t3, 0

loop:

li $v0, 4
la $a0, mensaje
syscall

li $v0, 5
syscall
 move $t0, $v0


     
   bltz $t0, end # Si el número es negativo, salta a la etiqueta "end"

add $t3, $t3, $t0

j loop

end:

li $v0, 4
la $a0, suma
syscall

li $v0, 1  
move $a0, $t3
syscall

 li $v0, 10          
    syscall
