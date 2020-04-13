	.text
	.globl main
main:
        li   $s0, 2
        li   $s1, 3

###
        slt   $t0, $s0, $s1      # start
	beq   $t0, $zero, L1
        addu  $s0, $s0, 1
        j     L2
L1:     addu  $s0, $s0, 2        # label L1
L2:     nop                      # label L2
###

        jr $ra                   # end
