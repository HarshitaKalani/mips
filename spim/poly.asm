.text
main:
li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
move $t0, $v0
li $v0, 4
la $a0, msg2
syscall
li $v0, 1
move $a0, $t0
syscall
li $t1, 10
mul $t1, $t1, $t0
mul $t1, $t1, $t0
li $t2, 4
mul $t2, $t2, $t0
add $t1, $t1, $t2
addi $t1, $t1, 3
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
move $a0, $t1
syscall
li $v0, 10
syscall
.data
msg: .asciiz "Enter a number: "
msg2: .asciiz "The number is: "
msg3: .asciiz "\nThe result is: "


