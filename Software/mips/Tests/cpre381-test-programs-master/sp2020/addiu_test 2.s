.data
.text
.globl main
main:
    # Start Test
    addiu $1, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU    
    addiu $2, $0, 65535     # verify that one can add max unsigned 16 bitnumber to 0 0+65535 works in the ALU   
    addiu $3, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $4, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $5, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $6, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $7, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $8, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $9, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $10, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $11, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $12, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $13, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $14, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $15, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $16, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $17, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $18, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $19, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $20, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $21, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $22, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $23, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $24, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $25, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $26, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $27, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $28, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $29, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $30, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    addiu $31, $0, 65535     # verify that one can add max unsigned 16 bit number to 0 0+65535 works in the ALU   
    # End Test

    # Exit program
    li $v0, 10
    syscall
	halt