#max and min of the array
.text
main:
la $s0, array
lw $s1, max
lw $s2, min
lw $s3, size
lw $t0, 0($s0)
loop:
lw $t1, 0($s0)
bgt $t1, $t0, greater
bgt $t0, $t1, greater
addi $s0, $s0, 4
addi $s3, $s3, -1
bgt $s3, $zero, loop
j end
greater:
sw $t1, 0($s1)
sw $t0, 0($s2)  
addi $s0, $s0, 4
addi $s3, $s3, -1
bgt $s3, $zero, loop
end:
li $v0, 4
la $a0, maxmsg
syscall
lw $v0, 1
lw $a0, max
syscall
li $v0, 4
la $a0, minmsg
syscall
lw $v0, 1
lw $a0, min
syscall

li $v0, 10
syscall


.data
array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
max: .word 0
min: .word 0
size: .word 10
maxmsg: .asciiz "Max: "
minmsg: .asciiz "Min: "

