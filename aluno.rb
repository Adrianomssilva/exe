class Aluno
  attr_reader :matricula
  attr_accessor :nome, :telefone
  # só utilizo o initialize para monstrar quais o atributos
  # contrutores da classe
  def initialize(nome, telefone, matricula)
    @nome = nome
    @telefone = telefone
    @matricula = matricula
  end
end