.data
	message: .asciiz "The number is less than the other"
.text

main: 

li $t0, 400
li $t1, 200

#checks if t0 is less than t1, if so it saves 1 into s0, if not it stores o
slt $s0, $t0, $t1 

beq $s0, $0, printMessage

li $v0, 10
syscall

printMessage:
	li $v0, 4
	la $a0, message
	syscall


