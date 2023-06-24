# Criar um programa que eu possa cadastrar quantos alunos eu quiser e comparar as suas médias e Buscar o aluno que eu quiser
def cadastro ()
   puts "Nome do Aluno : "
   nome = gets.chomp
   puts "Nota 1 : "
   nota1 = gets.to_i
   puts "Nota 2 : "
   nota2 = gets.to_i
   media = (nota1 + nota2)/2
   return {nome: nome, nota1: nota1, nota2: nota2, media: media}

end
print "Quantos alunos serão cadastrados? "
n_alunos = gets.to_i

alunos = []



n_alunos.times do 
 alunos << cadastro()
end
puts alunos