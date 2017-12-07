.data
	newLine: .asciiz "\n"

.text

	main:
		
		li $s0, 10
		
		jal increaseReg
		
		#printline
		li $v0, 4
		la $a0, newLine
		syscall
		
		#print value
		li $v0, 1
		add $a0, $0, $s0
		syscall
		
	
	li $v0, 10
	syscall
	
	increaseReg: 
		addi $sp, $sp, -4 #opens a stack of 4 spaces
		sw $s0, 0 ($sp) #store the original value of S0 at position 0 in $sp
		
		addi $s0, $s0, 30 #adds 30 to s0 register
		
		#print the int
		li $v0, 1
		move $a0, $s0
		syscall
		
		#loads back the original valut of S0 from stack and stores it back in s0
		lw $s0, 0($sp)
		addi $sp, $sp, 4 #takes away 4 spaces from the stack
		
		jr $ra