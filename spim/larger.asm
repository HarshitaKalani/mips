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
li $v0, 5
syscall
move $t1, $v0
bgt $t0, $t1, greater
bgt $t1, $t0, less
beq $t0, $t1, equal
j end
greater:
li $v0, 4
la $a0, msg3
syscall
j end
less:
li $v0, 4
la $a0, msg4
syscall
j end
equal:
li $v0, 4
la $a0, msg5
syscall
end:
li $v0, 10
syscall
.data
msg: .asciiz "Enter first number: "
msg2: .asciiz "Enter second number: "
msg3: .asciiz "First number is greater than second number"
msg4: .asciiz "Second number is greater than first number"
msg5: .asciiz "Both numbers are equal"
