.text
main:
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    bgt $t0, 1000, end
    li $v0, 4
    la $a0, prompt2
    syscall
    li $v0, 5
    syscall
    add $t0, $t0, $v0   
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 10
    syscall
    end:
    li $v0, 4
    la $a0, endprompt
    syscall
    li $v0, 10
    syscall
    .data
prompt: .asciiz "Enter first number: "
prompt2: .asciiz "Enter second number: "
endpromt: .asciiz "The number entered is greater than 1000. Enter number smaller than 1000"