.data

.text

	main:	
		
		li $a1, 50
		li $a2, 100
		
		jal addNumbers
		
		li $v0, 1
		add $a0, $0, $v1
		syscall
		
		li $v0, 10
		syscall
		
	addNumbers:
		add $v1, $a1, $a2
		jr $ra