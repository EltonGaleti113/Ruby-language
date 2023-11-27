#adicionar, editar ou remover
#contatos terão as seguintes informações (Nome, telefone)
#Poderemos ver todos os contatos registrador ou somente um contato;


@agenda=[{nome: 'Diego', telefone: "9917992186552"},
        {nome: 'Jubileu', telefone: "990836714512"}]

    def todos_contatos

      @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
      end
      puts'______________________________________________'
    end

    def adicionar_contatos
      print "Nome:"
      nome = gets.chomp
      print "Telefone:"
      telefone = gets.chomp
      @agenda <<{nome: nome, telefone: telefone}
      puts "#{nome} Adicionado"
    end


    def procurar_contato
      puts'Qual o Contato desejado?'
      nome = gets.chomp
      @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
          puts "#{contato[:nome]} - #{contato[:telefone]}"
					puts"------------------------------------------------"
				end
       end
			end

		def editar_contato
			print "Qual nome deseja editar?"
			nome = gets.chomp
			@agenda.each do |contato|
				if contato[:nome].downcase == (nome.downcase)
				print "Nome para editar (Se deseja  manter o mesmo nome aperte ENTER):"
				nome_salvo = contato[:nome]

				contato[:nome] = gets.chomp
				contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]

				print "Telefone para editar (Se deseja  manter o mesmo Telefone aperte ENTER):"
				telefone_salvo = contato[:telefone]

				contato[:telefone] = gets.chomp
				contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
				end
			end
		end

		def remover_contato
			print "Qual contato deseja remover?\n"
				nome = gets.chomp

			@agenda.each do |contato|
				if contato[:nome].downcase == (nome.downcase)
				indice = @agenda.index(contato)
				@agenda.delete_at(indice)
				break
				end
			end
		end



loop do
  puts '1. Contatos \n 2. Adicionar contato\n.3 Procurar contato\n.4 Editar contato\n.5  Remover contato\n.0 Sair'
    codigo =gets.chomp.to_i

    case
        when codigo == 0
            puts "Até mais!"
            break
        when codigo == 1
          todos_contatos

        when codigo ==2
          adicionar_contatos

        when codigo ==3
          procurar_contato

				when codigo ==4
					editar_contato

				when codigo ==5
					remover_contato
			end
		end
