
.text
main:
li $v0, 4
la $a0, msg
syscall
li $v0, 5
syscall
move $t0, $v0  #t0 has number of iterations
li $t1, 0
li $t2, 0
loop: 
addi $t1, $t1, 1
add $t2, $t2, $t1
bne $t1, $t0, loop
li $v0, 1
move $a0, $t2
syscall
li $v0, 10
syscall
.data
msg: .asciiz "Enter a number: "




# .text
# main:
# li $t0, 10
# li $t1, 0
# li $t2, 17
# loop:
# beq $t1, $t0, end
# add $t2, $t2, $t1
# addi $t1, $t1, 1
# j loop
# end:
# li $v0, 10
# syscall

