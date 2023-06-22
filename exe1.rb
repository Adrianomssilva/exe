#  LINEAR  SEARCH


arr = Array (1..10)

print "Digite um número de 1 a 10 aqui : "
n = gets.to_i

i = 0
s = arr.length

while s >= i 
  if n == arr[i]
    puts "Encontei o número #{n} na posição #{i + 1}"
    break
  else
    puts "Procurando número"
    
  end
   i = i + 1
end 
puts "Obrigado por ultizar nosso programa!"
#  Buscar uma forma de parar o while logo após (feito)
# encontrar o número.

# N2 - Criar um array random e buscar dentro desse array o número.

