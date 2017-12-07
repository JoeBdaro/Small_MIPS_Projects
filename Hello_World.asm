.data #contains data in RAM
myMessage: .asciiz "Hello World \n"
	
.text #contains program
li $v0, 4 #tells program to print something to screen 
la $a0, myMessage #loads something from RAM ADDRESS to CPU Register a0
syscall #executes