.data
	msg1: .asciiz "\nDigite o prumeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nO resultado da operacao e: "
.text
main:
	li $v0, 4 ##print_str
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4 ##print_str
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	mul $t3, $t1, $t2
	
	li $v0, 4 ##print_str
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	