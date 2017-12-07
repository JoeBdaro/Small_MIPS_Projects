.data 
prompt: .asciiz "Enter your age: "
message: .asciiZ "\nYour age is: "

.text

#promt user to enter age
li $v0, 4
la $a0, prompt
syscall

#get user input
li $v0, 5
syscall

#store the result in t0
add $t0, $0, $v0

#display message
li $v0, 4
la $a0, message
syscall

li $v0, 1
add $a0, $0, $t0
syscall

