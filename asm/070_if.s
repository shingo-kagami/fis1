	.text
	.globl main
main:
        li    $s0, 2
        li    $s1, 3

###
        bne   $s0, $s1, L1     # start
        addu  $s0, $s0, 1
L1:     nop                    # label L1

###

        jr $ra                 # end
