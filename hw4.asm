# hw4_22100396_Yeji Song (송예지)
.data
    str1: .asciiz "\nSum of multiples of 3 is "

.text
main:
    addi $t0, $zero, 0         # i = 0
    addi $t1, $zero, 0         # sum = 0
    # addi $s0, $zero, 15      # n = 15
    addi $t2, $zero, 3         # t2 = 3

loop:  
    addi $t0, $t0, 1           # i += 1
    bgt $t0, $s0, exit         # if (i>n) goto exit
    div $t0, $t2               # hi = i/3
    mfhi $t3                   # t3 = hi
    bne $t3, $zero, loop       # if (t3 != 0) goto loop
    add $t1, $t1, $t0          # sum += i
    j loop                       

exit:
    li $v0, 4
    la $a0, str1
    syscall
    

    li $v0, 1
    add $a0, $zero, $t1
    syscall

.end