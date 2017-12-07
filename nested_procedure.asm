.data
	newLine: .asciiz "\n"
.text

main:
	li $s0, 10
	
	jal increaseReg
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	#print value 
	jal printTheValue
	
	#ends program
	li $v0, 10
	syscall

increaseReg:
	addi $sp, $sp, -8
	sw $s0, 0($sp) #stores the original value of S0 in stack 
	sw $ra, 4($sp) #stores the original register address of main 
	
	addi $s0, $s0, 30
	
	#nested procedure
	jal printTheValue
	
	lw $s0, 0($sp) #loads the original value of S0 in stack 
	lw $ra, 4($sp) #loads the original register address of main 
	addi $sp, $sp, 8 
	
	 jr $ra
	 
printTheValue:
	li $v0, 1
	move $a0, $s0
	syscall
	
	jr $ra
