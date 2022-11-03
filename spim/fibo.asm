#fibonacci series
.text
main:
li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
move $t0, $v0
sub $t0, $t0, 1
li $t1, 0
li $t2, 1
loop: 
add $t3, $t1, $t2
move $t1, $t2
move $t2, $t3
sub $t0, $t0, 1
bne $t0, $0, loop
li $v0, 1
move $a0, $t3
syscall
li $v0, 10
syscall
.data
msg: .asciiz "Enter the number of terms: "

