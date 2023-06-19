puts "Bem-vindo ao cookbook, sua rede social de receitas "

receitas = []

# Add condicionais para dar mais opções e melhorar o cod.

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i

while (opcao != 3) do
   if (opcao == 1)
   puts "Digite o nome da receita: "
   nome = gets.chomp
    puts "Digite o tipo da receita: "
   tipo = gets.chomp

   receitas << {nome: nome, tipo: tipo}

   puts "Receita #{nome} cadastrada com sucesso"
   puts
   
   # utilizar elsif como forma de demonstração"

   elsif (opcao == 2)
   puts "===========RECEITAS CADASTRADAS==========="
   # Forma de fazer o FOR em Ruby
   # posso fazer apenas com puts receitas (nome do array)
   # receitas.each do |nome|
   #    puts nome
   # end
   receitas.each do |receitas|
   puts "#{receitas[:nome]} - #{receitas[:tipo]}"
   end
   else
      puts "Opção não cadastrada"
   end
   # O menu foi add novamente para parar o loop infinito
   puts "[1] Cadastrar uma receita"
   puts "[2] Ver todas as receitas"
   puts "[3] Sair"

   print "Escolha uma opção: "
   opcao = gets.to_i
end

puts "Obrigado por usar o Cookbook. Obrigado!"