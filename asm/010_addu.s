	.text
	.globl main
main:
        li $8, 2
        li $9, 3

###
        addu $10, $8, $9      # start
###

        jr $ra                # end
