.text
main:
lw $s0, N
lw $s1, SUM
la $t0, X
loop: 
lw $s2, 0($t0)
add $s1, $s1, $s2
addi $t0, $t0, 4
addi $s0, $s0, -1
bne $s0, $zero, loop
sw $s1, SUM
la $a0, str
li $v0, 4
syscall
lw $a0, SUM
li $v0, 1
syscall
li $v0, 10
syscall

.data
N: .word 10
SUM: .word 0
X: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
str: .asciiz "Sum = "
