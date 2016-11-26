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

puts search_array(arr, 68)

def fib(index)
  fib_array = [0,1]
  i = 2
  while i<index
    fib_array << (fib_array[i-1]+fib_array[i-2])
    i += 1
  end
  return fib_array
end

p fib(6)

