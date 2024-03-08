
#int main() {
#    int x = 5;
#    int y = 10;
#    int result = 0;

#    if (x < y) {
#        for (int i = 0; i < y; i++) {
#            result += x;
#        }
#    }

#    printf("Resultado: %d\n", result);

#    return 0;
#}



.data

mensaje: .asciiz "Resultado: "

.text

# int x = 5;
li $t1, 5
# int y = 10;
li $t2, 10
#int result = 0;
li $t3, 0
# int i = 0
li $t5, 0


#  if (x < y)
slt $t4,$t1,$t2
beq $t4,1,for


for:

beq $t2,$t5,end
slt $t6,$t5,$t4
add $t3, $t1, $t3
add $t5,$t5, 1

j for

end:

# printf("Resultado: %d\n", result);
li $v0, 4
la $a0, mensaje
syscall

li $v0, 1
move $a0, $t3
syscall

# return 0;
li $v0, 10
syscall
