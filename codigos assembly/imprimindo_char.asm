.data 
	int: .byte '1'  #frase a ser impressa
.text 
	li $v0, 1
	la $a0, int
	syscall 