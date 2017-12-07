.data
num1: .word 20
num2: .word 8

.text
lw $s0, num1 #s0 gets value of 20

lw $s1, num2 #s1 gets value of 8

sub $t0, $s0, $s1 #t0 gets value of 20 -8

li $v0, 1
add $a0, $0, $t0
syscall