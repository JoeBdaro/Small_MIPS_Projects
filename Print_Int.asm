.data
    age: .word 23 #.word is integer like declaration
.text
#prints integer to screen
li $v0, 1 #print integer
lw $a0, age
syscall