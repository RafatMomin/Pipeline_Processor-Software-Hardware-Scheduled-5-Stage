.data
.align 2
vals: .word 72 84 19 4 19 18 37 20 90 38 # address: 0x10010000
vals_length: .word 10                    # address: 0x10010028
.text
.globl main

# vars
# $s0 => *vals
# $s1 => vals_length
# $s2 => i
# $s3 => j
# $s4 => swapped
# $s5 => &arr[j]
# $s6 => &arr[j+1]
main:
    
    # s1 => vals_length
    lui $s1, 0x1001
    # s0 => vals
    lui $s0, 0x1001
    # i($s2) = 0
    addi $s2, $zero, 0
    nop
    ori $s1, $s1, 0x0028
    
    nop
    nop
    lw $s1, 0($s1)
    nop
    
    # outer loop
outer_loop_cond:
    
    
    addi $t0, $s1, -1
    nop
    nop
    # $t1 = i < n - 1
    nop
    slt $t1, $s2, $t0
    
    nop
    nop
    bne $t1, $zero, outer_loop_body
    
    j exit_outer_loop
    
outer_loop_body:
    
    add $s4, $zero, $zero
    
    add $s3, $zero, $zero
inner_loop_cond:
    sub  $t0, $s1, $s2
    
    nop
    nop
    addi $t0, $t0, -1
    
    nop
    nop
    # $t0 = j < n - i - 1
    slt $t0, $s3, $t0
    
    nop
    nop
    bne $t0, $zero, inner_loop_body
    
    j exit_inner_loop
    
inner_loop_body:
    
    # get offset of j (j * 4)
    sll $t0, $s3, 2
    
    nop
    nop
    add $s5, $s0, $t0
    
    nop
    nop
    # offset for j+1 is just j + 4
    addi $s6, $s5, 4
    
    nop
    lw $t0, 0($s5)
    
    lw $t1, 0($s6)
    
    nop
    nop
    slt $t2, $t1, $t0
    
    nop
    nop
    beq $t2, $zero, inner_loop_footer
    #do swap
    
    sw $t0, 0($s6)
    sw $t1, 0($s5)
    addi $s4, $zero, 1
inner_loop_footer:
    
    addi $s3, $s3, 1
    j inner_loop_cond
exit_inner_loop:
    
    beq $s4, $zero, exit_outer_loop
    
outer_loop_footer:
    addi $s2, $s2, 1
    j outer_loop_cond
    
exit_outer_loop:
    
    # Exit program
    j exit
    
exit:
    
    halt
