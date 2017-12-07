.data
	message: .asciiz "Hello, "
	user: .space 20 #specifies the number of char the user can enter
	nameReq: .asciiz "Please tell me your name \n" 
.text
	main:
		#prompts the user to enter his name
		li $v0, 4
		la $a0, nameReq
		syscall
		
		#reads the user input
		li $v0, 8
		la $a0, user  
		li $a1, 20
		syscall
		
		#prints the message
		li $v0, 4
		la $a0, message
		syscall
		
		#prints the users input back
		li $v0, 4
		la $a0, user
		syscall 
		  
	
	
	#ends program
	li $v0, 10
	syscall