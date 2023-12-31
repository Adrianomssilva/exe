CADASTRAR = 1
RECEITAS = 2
BUSCAR = 3
SAIR = 4

# Add condicionais para dar mais opções e melhorar o cod.
def menu()
   puts "=========== MENU ==========="
   puts "[#{CADASTRAR}] Cadastrar uma receita"
   puts "[#{RECEITAS}] Ver todas as receitas"
   puts "[#{BUSCAR}] Buscar receitas"
   puts "[#{SAIR}] Sair"
   puts ""
   print "Escolha uma opção: "
   return gets.to_i
end

def inserir_receita ()
   puts "Digite o nome da receita: "
   nome = gets.chomp
   puts "Digite o tipo da receita: "
   tipo = gets.chomp
   
   puts "Receita #{nome} cadastrada com sucesso"
   puts
   return {nome: nome, tipo: tipo}
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

while (opcao != SAIR) do
   if (opcao == CADASTRAR)
   receitas << inserir_receita()
   
   # utilizar elsif como forma de demonstração"

   elsif (opcao == RECEITAS)
   lista_receitas(receitas)
   elsif (opcao == BUSCAR)
      print "Escreva o tipo de receita desejada : "
      type = gets.chomp
      receitas.select { |receitas| receitas[:tipo] == type}
      
   else
      puts "Opção não cadastrada"
   end
   # O menu foi add novamente para parar o loop infinito
   puts ""
   puts ""
   opcao  = menu() 
end

puts "Obrigado por usar o Cookbook. Obrigado!"