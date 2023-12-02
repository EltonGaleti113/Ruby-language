#* 
#!
#TODO
#? 
#//
puts "********************************************"
puts "*Olá seja bem vindo ao jogo da adivinhação!*"
puts "********************************************"

def boas_vindas
	puts "Qual seu nome?"
	nome = gets.chomp
	puts "Começaremos o jogo " + nome
	return
end

def sorteia_numero_secreto
	sorteado = 150
	sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
	puts "\n\n"
		puts "tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
			puts "\n"
		puts "Entre com o numero"
			puts "\n"
		chute = gets	
		puts "Seu chute foi: " << chute
		chute
end


def verifica_se_acertou(numero_secreto, chute)
		acertou = numero_secreto == chute.to_i
		
		

	if acertou
		puts "ACERTOU!"
		return true
	else
		maior 	= numero_secreto > chute.to_i
		if maior
			puts "O numero secreto é maior!"
				puts "\n\n"
		else
			puts "O numero secreto é menor!"
				puts "\n\n"
		end
	end	
	return false
	
end



boas_vindas
numero_secreto = sorteia_numero_secreto


limite_de_tentativas = 5 

for tentativa in 1.. 		limite_de_tentativas
		

		chute   = pede_um_numero(tentativa, limite_de_tentativas)
		
		break if verifica_se_acertou(numero_secreto, chute)

end