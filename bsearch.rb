def binary_search(array, num)
   low = 0
   high = array.size

   loop do 
      mid = (low + high) / 2

      return num if array[mid] == num
      return false if array [mid] == nil
      return false if (high - low).abs == 1

      if array[mid] > num
         high = mid
         
      else
      low = mid
         
      end
   end
end

puts binary_search([1,2,3,4,5,6], 5)