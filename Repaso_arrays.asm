#  En este codigo se va leyendo los numeros del array A y va guardando
#  el mayor. Al final lo imprime.


.data

arrayA: .word 4,6,9,39,2,4,10,23,5,6
mensaje: .asciiz "El numero maximo es: "

.text

la $t0, arrayA
li $t1, 10 #Tamaño array
li $t2, 0 #Numero que vueltas en el loop
li $t3, 0 #Numero maximo

loop:

lw $t4, ($t0)  #Carga el valor del array en $t4

bge $t4, $t3, actualizar_maximo

add $t2,$t2,1 #Incrementa el numero de vueltas en el loop

add $t0,$t0,4 #Avanza al siguiente elemento del array

bne $t2,$t1,loop
beq $t2,$t1,end

actualizar_maximo:

move $t3, $t4

add $t2,$t2,1 

add $t0,$t0,4 

beq $t2,$t1,end
bne $t2,$t1,loop

 
end:

li $v0, 4
la $a0, mensaje  #Imprime: El numero maximo es: 
syscall

li $v0, 1
move $a0,$t3
syscall

li $v0, 10
syscall