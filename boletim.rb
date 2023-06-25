# Criar um programa que eu possa cadastrar quantos alunos eu quiser e comparar as suas médias e Buscar o aluno que eu quiser
CADASTRAR = 1
VERIFICAR = 2
BUSCAR = 3
SAIR = 4



# menu para que o usuário escolha as opções
def menu ()
   puts "========= BEM VINDO AO BOLETIM ESCOLAR ========="
   puts "ESCOLHA UMA DAS OPÇÕES A BAIXO"
   puts "[#{CADASTRAR}] CADASTRAR NOVOS ESTUDANTES"
   puts "[#{VERIFICAR}] VERIFICAR ALUNOS CADASTRADOS"
   puts "[#{BUSCAR}] Buscar aluno"
   puts "[#{SAIR}] SAIR"
   return gets.to_i
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
   puts "#{nome} foi cadastrado com sucesso!!"
   return {nome: nome, nota1: nota1, nota2: nota2, media: media}
#  aprender a mudar a classe do objeto para float, quero um número não inteiro (pesquisar para descobrir)
end
# verificar cria uma lista dos alunos com suas respectivas médias
def verificar(r)
   puts""
   puts ""
   r.each do |alunos|
   puts "#{alunos[:nome]} tem uma média de #{alunos[:media]}"
   end
end

def buscar(r)
   print "Digite o nome do aluno: "
   nome_buscar = gets.chomp
   r.search {|alunos| nome_buscar == :nome}
   
end


# print "Quantos alunos serão cadastrados? "
# n_alunos = gets.to_i

alunos = []

opcao = menu()

while (opcao != SAIR)
   if (opcao == CADASTRAR) 
      alunos << cadastro()
   elsif (opcao == VERIFICAR)
      verificar(alunos)
   elsif (opcao == BUSCAR)
      buscar(alunos)
   else
      puts "Por favor, escolha uma opção válida"
   end
   puts ""
   puts ""
   opcao = menu

end
puts ""
puts "==========================="
puts "OBRIGADO POR USAR O BOLETIM"