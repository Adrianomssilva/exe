puts "Bem-vindo ao cookbook, sua rede social de receitas "

receitas = []

while (true) do
   puts "Digite o nome da receita: "
   receita = gets.chomp

   receitas << receita

   puts "Receita #{receita} cadastrada com sucesso"
   puts
   puts "===========RECEITAS CADASTRADAS==========="
   # Forma de fazer o FOR em Ruby
   # posso fazer apenas com puts receitas (nome do array)
   receitas.each do |nome|
      puts nome
   
   end
   puts
end