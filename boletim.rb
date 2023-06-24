# Criar um programa que eu possa cadastrar quantos alunos eu quiser e comparar as suas médias e Buscar o aluno que eu quiser
CADASTRAR = 1
VERIFICAR = 2
SAIR = 3


def cadastro ()
   puts "Nome do Aluno : "
   nome = gets.chomp
   puts "Nota 1 : "
   nota1 = gets.to_i
   puts "Nota 2 : "
   nota2 = gets.to_i
   media = (nota1 + nota2)/2
   return {nome: nome, nota1: nota1, nota2: nota2, media: media}
#  aprender a mudar a classe do objeto para float, quero um número não inteiro (pesquisar para descobrir)
end

def menu ()
   puts "========= BEM VINDO AO BOLETIM ESCOLAR ========="
   puts "ESCOLHA UMA DAS OPÇÕES A BAIXO"
   puts "[#{CADASTRAR}] CADASTRAR NOVOS ESTUDANTES"
   puts "[#{VERIFICAR}] VERIFICAR ALUNOS CADASTRADOS"
   puts "[#{SAIR}] SAIR"
end


print "Quantos alunos serão cadastrados? "
n_alunos = gets.to_i

alunos = []



n_alunos.times do 
 alunos << cadastro()
end
puts alunos