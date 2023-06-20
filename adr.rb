# Add condicionais para dar mais opções e melhorar o cod.
def menu()
   puts "[1] Cadastrar uma receita"
   puts "[2] Ver todas as receitas"
   puts "[3] Sair"
   puts ""
   print "Escolha uma opção: "
   return gets.to_i
end

def inserir_receita (r)
   puts "Digite o nome da receita: "
   nome = gets.chomp
   puts "Digite o tipo da receita: "
   tipo = gets.chomp

   r << {nome: nome, tipo: tipo}

   puts "Receita #{nome} cadastrada com sucesso"
   puts
end

def lista_receitas (r)
   puts "===========RECEITAS CADASTRADAS==========="
   # Forma de fazer o FOR em Ruby
   # posso fazer apenas com puts receitas (nome do array)
   # receitas.each do |nome|
   #    puts nome
   # end
   r.each do |receitas|
   puts "#{receitas[:nome]} - #{receitas[:tipo]}"
   end
end

puts "Bem-vindo ao cookbook, sua rede social de receitas "

receitas = []

opcao = menu()

while (opcao != 3) do
   if (opcao == 1)
   inserir_receita(receitas)
   
   # utilizar elsif como forma de demonstração"

   elsif (opcao == 2)
   lista_receitas(receitas)
   else
      puts "Opção não cadastrada"
   end
   # O menu foi add novamente para parar o loop infinito
   puts ""
   puts ""
   opcao  = menu() 
end

puts "Obrigado por usar o Cookbook. Obrigado!"