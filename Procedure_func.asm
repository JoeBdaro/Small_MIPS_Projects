.data
message: .asciiz "Hi Everybody. \nMy name is Joe. \n"
.text
main:
	jal displayMessage
	addi $s0, $0, 5
	
	li $v0, 1
	add $a0, $0, $s0
	syscall

li $v0 ,10 #tells the program to end
syscall

displayMessage: #procedure label
	li $v0, 4
	la $a0, message
	syscall
jr $ra #jump to return address (where the function was last called)