def lienear_search (array, num)
   i = 0
   while i<array.size
      return num if array[i] == num
      i += 1
   end
   false
end 

puts lienear_search([1,2,3,4,5], 4)
puts lienear_search([1,2,3,4,5], 100)