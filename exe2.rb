# Criar um busca bilinear.
# Consiste em fazer a busca por intervalos...
# Primeiro buscar o elemento central do intervalo e analisar se é o elemento ou não
# Se esse elemento for menor a busca pega o intervalo da esquerda, se maior o da direita
# O processo se repete até encontrar o elemento correspondente.

ar = [1,2,3,4,5]

# for num in ar
#    puts num
# end

# 6.times do |contador|
#    puts "#{contador}"
# end

count = 0 

loop do
   puts count 
   if count == 150 
      break
   end
count += 1
end