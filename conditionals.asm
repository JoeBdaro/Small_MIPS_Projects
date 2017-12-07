.data
	message: .asciiz "The numbers are equal"
	message2: .asciiz "Nothing is equal."
.text
	main:
		li $t0, 5
		li $t1, 20
		
		#checks if t0 = t1, if so it jumps to notequal label, else it continues with program
		beq $t0, $t1, numbersEqual 
		
		bne $t0, $t1, notEqual
		
		
	#ends program
	li $v0, 10
	syscall

	numbersEqual: 
	la $v0, 4
	la $a0, message2
	syscall
	
	notEqual:
	li $v0, 4
	la $a0, message2
	syscall