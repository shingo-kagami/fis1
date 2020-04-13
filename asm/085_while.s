	.text
	.globl main
main:
        li    $s0, 2
        li    $s1, 5

###
L1:     slt   $t0, $s0, $s1     # start, label L1
        beq   $t0, $zero, L2
        addu  $s0, $s0, 1
        j     L1
L2:     nop                     # label L2
###

        jr $ra                  # end
