.text
.globl main

main:
    addi x5, x0, 5      # x5 = 5
    addi x6, x0, 10     # x6 = 10
    add  x7, x5, x6     # x7 = 15

    addi x17, x0, 93
    addi x10, x0, 0
    ecall
