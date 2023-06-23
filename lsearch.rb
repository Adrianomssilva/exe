def l_search (array, num)
   i = 0 
   while i < array.size
      return num if num == array[i]
      i += 1
   end
   false
end   
   
   puts l_search([1,2,3,4,5,6], 5)
