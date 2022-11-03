# get the min value from the array
.text
main:
la $t0, A
lw $t1, N
lw $t3, min
loop:
lw $t2, 0($t0)
bgt $t2, $t3, max
move $t3, $t2
addi $t0, $t0, 4
addi $t1, $t1, -1
bgt $t1, $zero, loop
max:
addi $t0, $t0, 4
addi $t1, $t1, -1
bgt $t1, $zero, loop
sw $t3, min
li $v0, 1
lw $a0, min
syscall
li $v0, 10
syscall

.data
N: .word 10
A: .word 13, 3, 5, 2, 8, 4, 6, 7, 9, 12
min: .word 1000



