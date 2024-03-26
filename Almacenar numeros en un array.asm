#----------------------------------------------------------------------|
# Este codigo pide al usuario diez numeros y los almacena en un array. |
#----------------------------------------------------------------------|

.data

mensaje: .asciiz "Introduce un número: "
tamaño_del_array: .word 10       
array: .word 0:10     

.text

  li $t0, 0                   
  la $t1, array               
  lw $t2, tamaño_del_array
  
añadir:
   bge $t0, $t2, imprimir_array
    
    
    li $v0, 4                    
    la $a0, mensaje              
    syscall                    

    li $v0, 5                   
    syscall 
    
                        
    sw $v0, ($t1)               
    addi $t0, $t0, 1            
    addi $t1, $t1, 4            
    j añadir              

imprimir_array:

  li $t0, 0                   
  la $t1, array               

bucle_de_impresion:
    bge $t0, $t2, end

    lw $a0, ($t1)               
    li $v0, 1                   
    syscall     
        
 # Imprime una coma para separ los resultados impresos almacenados en el array.                       
    li $v0, 11                  
    li $a0, ','                
    syscall                     

    addi $t0, $t0, 1            
    addi $t1, $t1, 4            
    
    j bucle_de_impresion                

end:
    li $v0, 10                  
    syscall