.data #area para dados na memoria principal
	msg:.asciiz "olá, mundo!" #mensagem a ser exibida para o usuario 

.text

	#area para instruçoes do programa
	
	#intrucao para impressao de string
	
	li $v0, 4 #instrucao pra impressao de string
	la $a0, msg #vai indicar o endereço em que esta a mensagem
	syscall #faça / imprima