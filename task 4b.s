.text
.globl main


main:
    li x10,0x100    #a(x10) is the character array
    li x11,0x200    #b(x11) is the short array 
    li x12,0x300    #c(x12) is the unsigned integer array
 
    #we will manualy do this  4 times
    lbu x13,0(x10)      #a[0]
    lh x14,0(x11)       #b[0]
    add x15,x13,x14    #c[0] = a[0] + b[0]
    sw x15,0(x12)      #to store c[0]
    # a stores 1 byte, b stores 2 bytes, c stores 4 bytes
    #we will use 1,2,4 due to offset calculation after multiplying with the bytes
    lbu x13,1(x10)      #a[1]
    lh x14,2(x11)       #b[1]
    add x15,x13,x14    #c[1] = a[1] + b[1]
    sw x15,4(x12)      #to store c[1]

     #we will use 2,4,8 due to offset calculation 
    lbu x13,2(x10)      #a[2]
    lh x14,4(x11)       #b[2]
    add x15,x13,x14    #c[2] = a[2] + b[2]
    sw x15,8(x12)      #to store c[2]

    #we will use 3,6,12 due to offset calculation after multiplying with the bytes
    lbu x13,3(x10)      #a[3]
    lh x14,6(x11)       #b[3]
    add x15,x13,x14    #c[3] = a[3] + b[3]
    sw x15,12(x12)      #to store c[3]
    end:
       j end

















