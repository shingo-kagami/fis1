	.text
	.globl main
main:
        addu  $sp, $sp, -4096
        li    $t0, 2
        sw    $t0, 0($sp)
        li    $t0, 3
        sw    $t0, 4($sp)

###
        lw    $t0, 0($sp)     # start
        lw    $t1, 4($sp)
        addu  $t2, $t0, $t1
        sw    $t2, 8($sp)
###
        addu  $sp, $sp, 4096  # end
        jr $ra
