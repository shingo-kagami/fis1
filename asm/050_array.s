	.text
	.globl main
main:
        addu  $sp, $sp, -4096
        li    $t0, 1
        sw    $t0, 0($sp)

###
        addu  $t0, $sp, 4      # start
        lw    $t1, 0($sp)
        sll   $t1, $t1, 2
        addu  $t0, $t0, $t1
        li    $t2, 300
        sw    $t2, 0($t0)
###
        addu  $sp, $sp, 4096   # end
        jr $ra
