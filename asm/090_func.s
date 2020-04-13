	.text
	.globl main

###
func:   addu $a0, $a0, $a1     # label func
        move $v0, $a0
        jr   $ra
###

main:
        addu $sp, $sp, -4096
        sw   $ra, 0($sp)

###
        li   $a0, 5            # start
        li   $a1, 1
        jal  func
        move $s0, $v0

        li   $a0, 8
        li   $a1, 2
        jal  func
        move $s1, $v0

        move $a0, $s0
        move $a1, $s1
        jal  func
        move $s2, $v0
###

        lw   $ra, 0($sp)       # end
        addu $sp, $sp, 0x4096
        jr   $ra
