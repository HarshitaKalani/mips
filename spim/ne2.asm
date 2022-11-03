.text
main:
	lw $t0, value
	lw $t1, 0($t0)
    add $t0, $t0, 4
	lw $t2, 0($t0)
	beq $t1, $t2, Equal
    li $v0, 4
    la $a0, NotEqual
    syscall
    j end
    Equal: 
    li $v0, 4
    la $a0, eq
    syscall
    end:
    li $v0, 10
    syscall
    
.data
value : .word 3, 4
NotEqual: .asciiz "NotEqual"
eq: .asciiz "Equal"
