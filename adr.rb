puts "Bem-vindo ao cookbook, sua rede social de receitas "

receitas = []

# Add condicionais para dar mais opções e melhorar o cod.

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção"
opcao = gets.chomp

while (true) do
   puts "Digite o nome da receita: "
   receita = gets.chomp

   receitas << receita

   puts "Receita #{receita} cadastrada com sucesso"
   puts
   puts "===========RECEITAS CADASTRADAS==========="
   # Forma de fazer o FOR em Ruby
   # posso fazer apenas com puts receitas (nome do array)
   # receitas.each do |nome|
   #    puts nome
   # end
   puts receitas
   puts
end