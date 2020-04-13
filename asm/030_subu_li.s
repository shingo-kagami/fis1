	.text
	.globl main
main:
        li $s0, 36

###
        subu  $s1, $s0, 8       # start
        li    $s2, 15
###

        jr $ra                  # end
