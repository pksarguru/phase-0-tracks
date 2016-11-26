arr = [68, 68, 4, 5, 68]

def search_array(array, number)
    n = array.length
    (n-1).times do |index|
      if number == array[index]
        puts index
      end
    end
end

puts search_array(arr, 68)

def fib(index)
  fib_array = [0,1]
  (index-2).times do |i|
    fib_array << (fib_array[i]+fib_array[i+1])
  end
  return fib_array
end

p fib(10)

