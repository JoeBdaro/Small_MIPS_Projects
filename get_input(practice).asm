.data
message: .asciiz "please enter your name \n" 
message2: .asciiz "hello, "
name:	 .space 20
ageReq: .asciiz "please enter your age"
.text

	main:
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 8
	la $a0, name
	li $a1, 20
	syscall
	
	li $v0, 4
	la $a0, message2
	syscall 
	
	li $v0, 4
	la $a0, name
	syscall