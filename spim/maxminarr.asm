.data
N: .word 10
array: .word  1, 2, 3, 4, 5, 7, 8, 9, 11, 6
max: .word 0
min: .word 0
mxmsg: .asciiz "The maximum value is: "
mnmsg: .asciiz "The minimum value is: "


.text
main:
lw $t4, N
la $t0, array
lw $t5, max
lw $t6, min
loop:
beq $t4, $zero, end
addi $t4, $t4, -1
addi $t0, $t0, 4
lw $t1, 0($t0)
bgt $t1, $t5, maxi
bgt $t6, $t1, mini
j end
maxi:
sw $t1, 0($t5)
j loop
mini:
sw $t1, 0($t6)
j loop
end:
li $v0, 4
la $a0, mxmsg
syscall
li $v0, 1
lw $a0, max
syscall
li $v0, 4
la $a0, mnmsg
syscall
li $v0, 1
lw $a0, min
syscall
li $v0, 10
syscall





