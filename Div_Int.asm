.data

.text
li $t0, 30
li $t1, 5

div $s0, $t0, $t1

#print result
li $v0, 1
add $a0, $0, $s0
syscall