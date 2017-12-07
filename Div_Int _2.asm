.data
quotient: .asciiz "The Quotient is: " 
remainder: .asciiz "\n The Remainder is: \n"
.text

main:

li $t0, 30
li $t1, 6


div $t0, $t1 

mflo $s0 #has quotient
mfhi $s1 #has remainder

#print Quotient string
li $v0, 4
la $a0, quotient
syscall

subi $v0, $v0, 4

#print Quotient result
li $v0, 1
add $a1, $0, $s0
syscall

subi $v0, $v0, 1

#print remainder string
li $v0, 4
la $a2, remainder
syscall

subi $v0, $v0, 4

#print Quotient result
li $v0, 1
add $a3, $0, $s1
syscall

subi $v0, $v0, 1