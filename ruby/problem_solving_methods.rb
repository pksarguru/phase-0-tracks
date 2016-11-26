arr = [34, 68, 4, 5, 68]

def search_array(array, number)
    index = 0
    until index > array.length
      if number == array[index]
        puts index
      end
      index += 1
    end
  end

#   until i > array.length
#     if number == array[i]
#       puts i
#       break
#     end
#     i += 1
#   end
# end

puts search_array(arr, 68)