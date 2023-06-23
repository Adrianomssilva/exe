array = [3,2,1,0]
n = array.length
i = 0
j = i+1
temp = 0

while i < n - 1  do 
   if array[0].to_i > array[j].to_i
      temp = array[j]
      array[j] = array[i]
      array[i] = temp 
      i =  i + 1
      j = i + 1

   end
 
end
puts array
