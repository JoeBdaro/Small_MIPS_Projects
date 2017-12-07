.data

.text

li $t0, 10
li $t1, 5

#multiplies t1 and t2 and saves it into t3 
mul $t3, $t0, $t1

#display the product
la $v0, 1
add $a0, $0, $t3
syscall