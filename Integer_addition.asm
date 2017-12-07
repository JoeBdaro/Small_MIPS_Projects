.data
num1: .word 5
num2: .word 10
.text
lw $t0, num1

la $t1, num2


#Prints result
li $v0, 1
add $a0, $0, $t1 #adds $t2 into the $0 which basically moves $t2 into reg $a0 
syscall  