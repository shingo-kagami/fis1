	.text
	.globl main
main:
        addu  $sp, $sp, -4096
        li    $t0, 1
        sw    $t0, 0($sp)
        li    $t0, 3
        sw    $t0, 4($sp)
        li    $t0, 5
        sw    $t0, 8($sp)
        li    $t0, 7
        sw    $t0, 12($sp)

###
        lw    $t0, 0($sp)       # start
        addu  $t0, $t0, 3
        sw    $t0, 0($sp)
        lw    $t1, 4($sp)
        lw    $t0, 8($sp)
        sll   $t0, $t0, $t1
        sw    $t0, 8($sp)
        lw    $t0, 12($sp)
        slt   $t0, $t0, $t1
        sw    $t0, 12($sp)

###
        addu  $sp, $sp, 4096    # end
        jr $ra
