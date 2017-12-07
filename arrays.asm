.data
	myArray: .space 12
	
.text

li $s0, 4
li $s1, 10
li $s2, 12

#index $t0
li $t0, 0

sw $s0, myArray($t0) #stores first int in array first location 
	addi $t0, $t0, 4 #moves t0 to the second location and so on
sw $s1, myArray($t0)
	addi $t0, $t0, 4
sw $s2, myArray($t0)
	addi $t0, $t0, 4

lw $t6, myArray($0)

li $v0, 1
add $a0, $0, $t6
syscall