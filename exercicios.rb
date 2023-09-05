alunos = [{ nome: 'Alberto', nota: 7, disciplina: 
'Artes' }, { nome: 'Ingrid', nota: 4, disciplina: 'Biologia' }]

alunos.each do |aluno_nome|
  puts aluno_nome[:nome]
end


# nota = -1
# case nota
# when 0
#   puts 'Você tirou zero! Precisa melhorar…'
# when 1..4
#   puts 'Reprovado… precisa se esforçar mais...'
# when 5
#   puts 'Passou raspando!'
# when 6..9
#   puts 'Parabéns, você foi aprovado.'
# when 10
#   puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
# else
#   puts "Insira um valor válido"
# end 

# tecla_pressionada = 's'
# alunos = []
# notas = []

# while tecla_pressionada == 's' do
#   puts 'Digite o nome do aluno: '
#   nome_aluno = gets.chomp
#   puts 'Digite a nota do aluno: '
#   nota = gets.chomp
#   puts 'Digite a disciplina: '
#   disciplina = gets.chomp
# alunos << {nome: nome_aluno, nota: nota, disciplina: disciplina}
# puts alunos
#   puts 'Deseja inserir um novo aluno? s ou n'
#   tecla_pressionada = gets.chomp

# end