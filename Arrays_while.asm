.data
	message: .asciiz "The elements of the array are: "
	message2: .asciiz ", "
	myArray: .space 30
.text 
	main: 
		addi $t0, $0, 0
		
		li $s0, 4
		li $s1, 10
		li $s2, 12
		li $s3, 15

		sw $s0,  myArray($t0)
		addi $t0, $t0, 4
		sw $s1, myArray($t0)
		addi $t0, $t0, 4
		sw $s2, myArray($t0)
		addi $t0, $t0, 4
		sw $s3, myArray($t0)
	

while: 
	slti $t1, $t0, 16
	bne $t1, $0, end
	
	lw $t6, myArray($t0)

	li $v0, 1
	add $a0, $0, $t6
	syscall
	
	jal printNum
	
	j while
	

end:
li $v0, 10
syscall

printNum:

li $v0, 4
la $a0, message2
syscall

jr $ra