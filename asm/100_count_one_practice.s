	.text
	.globl main
main:
        addu  $sp, $sp, -4096
        li    $t0, 13
        sw    $t0, 0($sp)
        move  $s1, $sp

###
        lw   $s0, 0($s1)          # start
        move $t0, $zero
L1:     and  $t1, $s0, 1          # label L1
        addu $t0, $t0, $t1
        srl  $s0, $s0, 1
        bne  $s0, $zero, L1
        sw   $t0, 0($s1)
###
        addu  $sp, $sp, 4096      # end
        jr    $ra
