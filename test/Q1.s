#take input array from user and find the sum of the array
.text
main:
li $v0, 4
la $a0, prompt
syscall
li $v0, 5
syscall
move $s0, $v0
li $v0, 5
syscall
move $s1, $v0
li $v0, 5
syscall
move $s2, $v0
li $v0, 5
syscall
move $s3, $v0
li $v0, 5
syscall
move $s4, $v0
add $s5, $s0, $s1
add $s5, $s5, $s2
add $s5, $s5, $s3
add $s5, $s5, $s4
li $v0, 4
la $a0, sum
syscall

li $v0, 1
move $a0, $s5
syscall
li $v0, 10
syscall
.data 
prompt: .asciiz "Enter 5 numbers: "
sum: .asciiz "Sum is: "
