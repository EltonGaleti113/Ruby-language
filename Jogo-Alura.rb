#* 
#!
#TODO
#? 
#//

def boas_vindas
	puts "********************************************"
	puts "*Olá seja bem vindo ao jogo da adivinhação!*"
	puts "********************************************"
	
	puts "Qual seu nome?"
	nome = gets.chomp

	puts "Começaremos o jogo " + nome
	numero_secreto = 150
end


def repetição
limite_de_tentativas = 5 

	for tentativa in 1.. 		limite_de_tentativas
		puts "\n\n\n"
		puts "tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
		puts "Entre com o numero"
		chute = gets	
		puts "Seu chute foi: " << chute

		acertou = numero_secreto == chute.to_i


		if acertou
				puts "Acertou!"
				break
		else
				puts"Errou"
		end
end