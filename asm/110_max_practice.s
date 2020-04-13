	.text
	.globl main
main:
        addu  $sp, $sp, -4096

        li    $t0, 10
        sw    $t0, 0($sp)
        li    $t0, 20
        sw    $t0, 4($sp)
        li    $t0, 3
        sw    $t0, 8($sp)
        li    $t0, 22
        sw    $t0, 12($sp)
        li    $t0, 5
        sw    $t0, 16($sp)

        move  $s0, $sp
        li    $s1, 5

###
        move  $v0, $zero      # start
L1:     lw    $t0, 0($s0)     # label L1
        sltu  $t1, $v0, $t0
        beq   $t1, $zero, L2
        move  $v0, $t0
L2:     addu  $s0, $s0, 4     # label L2
        addu  $s1, $s1, -1
        bne   $s1, $zero, L1
###
        addu  $sp, $sp, 4096  # end
        jr $ra
