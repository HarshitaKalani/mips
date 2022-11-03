#check if two numbers are equal or not
.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
move $t0, $v0
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0
beq $t0, $t1, equal
bne $t0, $t1, not_equal
equal:
li $v0, 4
la $a0, msg3
syscall
j end
not_equal:
li $v0, 4
la $a0, msg4
syscall
end:
li $v0, 10
syscall
.data
msg1: .asciiz "Enter first number: "
msg2: .asciiz "Enter second number: "
msg3: .asciiz "Numbers are equal"
msg4: .asciiz "Numbers are not equal"
