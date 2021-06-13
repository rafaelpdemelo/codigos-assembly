.data 
	msg: .asciiz "Forneça um número: "
	par: .asciiz "O número é par. "
	impar: .asciiz "O número é impar."
	
.text 	

	#imprimir mensagem para o usuário
	li $v0, 4
	la $a0, msg 
	syscall
	
	#ler o numero
	li $v0, 5
	syscall
	
	#fazer a divisão por 2
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divisão por 2
	
	beq $t1, $zero, imprimirPar #se for par, ele nao vai executar as linhas 24-26 e vai direto para o imprimirPar
	
	#se for impar, vai nos dizer aqui
	li $v0, 4
	la $a0, impar
	syscall
	
	#encerrar o programa
	li $v0, 10
	syscall
	
		
	
	imprimirPar: 
		li $v0, 4
		la $a0, par
		syscall
		