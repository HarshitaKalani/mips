.text
main:
li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
move $t0, $v0
li $t1, 0
li $t2, 1
loop:
beq $t0, $t1, end
addi $t1, $t1, 1
mul $t2, $t2, $t1
j loop
end:
li $v0, 1
move $a0, $t0
syscall
li $v0, 4
la $a0, msg2
syscall
li $v0, 1
move $a0, $t2
syscall
li $v0, 10
syscall
.data
msg: .asciiz "Enter a number: "
msg2: .asciiz "! = "
