# Criar um programa que eu possa cadastrar quantos alunos eu quiser e comparar as suas médias e Buscar o aluno que eu quiser
CADASTRAR = 1
VERIFICAR = 2
SAIR = 3



# menu para que o usuário escolha as opções
def menu ()
   puts "========= BEM VINDO AO BOLETIM ESCOLAR ========="
   puts "ESCOLHA UMA DAS OPÇÕES A BAIXO"
   puts "[#{CADASTRAR}] CADASTRAR NOVOS ESTUDANTES"
   puts "[#{VERIFICAR}] VERIFICAR ALUNOS CADASTRADOS"
   puts "[#{SAIR}] SAIR"
end

# metodo cadastro add um hash ao array
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

def verificar(r)
   r.each |alunos|
   puts "#{alunos[:nome]} tem uma média de #{alunos[:media]}"

# print "Quantos alunos serão cadastrados? "
# n_alunos = gets.to_i

alunos = []

opcao = menu()

while (opcao != SAIR)
   if (opcao == CADASTRAR) 
      alunos << cadastro()
      puts "#{nome} foi cadastrado com sucesso!!"
   elsif (opcao == VERIFICAR)
      verificar(alunos)
   end
   puts ""
   puts ""
   opcao = menu

end
puts "OBRIGADO POR USAR O BOLETIM"