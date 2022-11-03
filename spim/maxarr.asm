# get the max value from the array
.text
main:
la $t0, A
lw $t1, N
lw $t3, max
loop:
lw $t2, 0($t0)
blt $t2, $t3, maxi
move $t3, $t2
addi $t0, $t0, 4
addi $t1, $t1, -1
bgt $t1, $zero, loop
maxi:
addi $t0, $t0, 4
addi $t1, $t1, -1
bgt $t1, $zero, loop
sw $t3, max
li $v0, 1
lw $a0, max
syscall
li $v0, 10
syscall

.data
N: .word 10
A: .word  3, 5, 2, 8, 4, 6, 7, 9, 12
max: .word -1



