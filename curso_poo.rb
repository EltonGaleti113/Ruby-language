# Vamos_construir_um_pequeno_sistema_que_nos_permita_catalogar_os_produtos_de_uma_livraria

# Classe que define a categoria livro
class Livro
  attr_accessor :preco
  attr_reader :titulo, :ano_lancamento

  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @preco  = preco
    @ano_lancamento = ano_lancamento
    if ano_lancamento < 2000
      @preco *= 0.7
    end
  end
end

# livro_rails = Livro.new('Programming Web For Rails', 70, 2010)
# livro_ruby  = Livro.new('Programming Ruby with Neil Armstrong', 70, 2011)

algoritmos = Livro.new("Algoritmos", 100, 1998)
livro_para_newsletter = algoritmos
aplica_promocoes = algoritmos

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 2000
    puts 'Newsletter/Liquidacao'
    puts livro.titulo
    puts livro.preco
  end
end
