.data 

.text
li $t0, 2000
li $t1, 10

mult $t0, $t1

mflo $s0

li $v0, 1
add $a0, $0, $s0
syscall