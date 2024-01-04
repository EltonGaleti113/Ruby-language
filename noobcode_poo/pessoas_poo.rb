# classe principal Aluno
class Aluno
  attr_reader :last_name, :idade

  def nome
    @nome
  end

  def nome=(novo_nome)
    @nome = novo_nome
  end


  def initialize(nome, last_name, idade )
    @nome = nome
    @last_name = last_name
    @idade = idade
  end

  def mostrar_dados
    puts "Nome: #{self.nome} #{@last_name}, Idade: #{@idade}"
  end
end

a1 = Aluno.new('Diego','Araujo', 21)
a1.mostrar_dados
