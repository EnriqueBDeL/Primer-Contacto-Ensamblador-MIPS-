
#Funcionamiento del codigo:

# int main() {
#    int contador = 0;               // Contador
#    int numero_repeticiones = 9;    // Número de repeticiones 
#    int suma = 0;                   // Resultado de la suma

#   for (contador = 0; contador != numero_repeticiones; contador++) {
#       printf("\nIntroduce un numero: ");
#       int numero;
#       scanf("%d", &numero);
#      suma += numero;
#  }

#  printf("\nFor terminado.");
#  printf("\nLa suma de todos los numeros introducidos es: %d", suma);
   
# 	return 0;
#	}

.data
    mensaje1: .asciiz "\nIntroduce un numero: "
    mensaje2: .asciiz "\nFor terminado."
    mensaje3: .asciiz "\nLa suma de todos los numeros introducidos es: "

.text

    li $t0, 0       # Contador
    li $t1, 9      # Numero de repeticiones 
    li $t4, 0      #Resultado suma


for_comprobacion:
    
    bne $t0, $t1, for  # Saltar a 'for_continue' si $t0 no es igual a $t1
    
    
    j fin
    
for:
  
    
    li $v0, 4
    la $a0, mensaje1
    syscall

    li $v0, 5
    syscall
    move $t3, $v0
    
    add $t4,$t4,$t3
    addi $t0, $t0, 1 
   
    j for_comprobacion

fin:
   
    li $v0, 4
    la $a0, mensaje2
    syscall
    
    li $v0, 4
    la $a0, mensaje3
    syscall
    
    li $v0, 1           # '1' Sirve para imprimir un entero
    move $a0, $t4
    syscall

    li $v0, 10
    syscall
