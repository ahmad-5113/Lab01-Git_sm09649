# .text
# .globl main
# main:
#     li x1, 5       # a
#     li x2, 0       # b

#     addi x1, x2, 32    # a = b + 32
#     add x3, x1, x2     # a + b
#     li x4, 5
#     sub x5, x3, x4     # d = (a + b) - 5

#     sub x6, x1, x5     # a - d
#     sub x7, x2, x1     # b - a
#     add x8, x6, x7     # (a - d) + (b - a)
#     add x9, x8, x5     # e = ((a - d) + (b - a)) + d

#     add x9, x9, x1     # e = e + a
#     add x9, x9, x2     # e = e + b
#     add x9, x9, x5     # e = e + d
# end:
#     j end






.globl main
main:
    li x1, 5       # a
    li x2, 0       # b

    addi x1, x2, 32    # a = b + 32

    add x3, x1, x2
    li x4, 5
    sub x5, x3, x4     # d = (a + b) - 5

    sub x6, x1, x5
    sub x7, x2, x1
    add x8, x6, x7
    add x9, x8, x5     # e = ((a - d) + (b - a)) + d

    add x9, x9, x1     # e = e + a
    add x9, x9, x2     # e = e + b
    add x9, x9, x5     # e = e + d
                        
                       #Here we are going to print a
    li a0, 1           # This gives the instruction to print an integer
    mv a1, x1          # The integer that I want to print is currently stored in x1
    ecall
    li a0, 11       # Used to print a single character
    li a1, 10       #Used for newline 
    ecall

    li a0, 1           # Here we are going to print b
    mv a1, x2          #Then integer in stored in x2
    ecall
    li a0, 11      #Used to print a single character
    li a1, 10      #Used for newline 
    ecall

    li a0, 1          # Here we are going to print d
    mv a1, x5
    ecall
    li a0, 11
    li a1, 10
    ecall

    li a0, 1           # Here we are going to print e
    mv a1, x9
    ecall
    li a0, 11
    li a1, 10
    ecall

    li a0, 10          # Used to exit 
    ecall


#    end: 
#          j end