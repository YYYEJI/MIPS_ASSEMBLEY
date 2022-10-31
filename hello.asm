# test.s
# print "Hello World!!!"
.data
    str: .asciiz "\nHello, World!\n"

.text
main:
    li $v0, 4
    la $a0, str
    syscall

    li $v0, 10
    syscall