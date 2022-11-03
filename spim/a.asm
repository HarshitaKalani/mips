.data
N: .word
X: .word 2,4,6,8,10
SUM: .word
str:
.asciiz "The sum of the array is:"
.text
.global main
main:
lw $s0, N
la $t0, X
add $s1, $s1, $zero
loop:
lw $t1, 0($t0)
add $s1, $s1, $t1
addi $t0, $t0, 4
addi $s0, $s0, -1
bgt $s0, $zero, loop
sw $s1, SUM
li $v0, 10
syscall
.end
