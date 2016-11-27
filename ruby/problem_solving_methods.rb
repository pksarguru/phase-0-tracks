# Release 0

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

# Release 1

def fib(index)
  fib_array = [0,1]
  (index-2).times do |i|
    fib_array << (fib_array[i]+fib_array[i+1])
  end
  fib_array
end

p fib(6)

# Release 2

# Bubble-sort pseudocode
# compare first two items of an array.  
# if the second item is less than the first item swap else do nothing
# compare the 2nd and 3rd item and swap if the 3rd item is less than the 2nd else do nothing
#   continue until you reach the end of the array
# then repeat the process again but stopping one short of the array.
# then repeat the process again but stopping two short of the end of the array
# repeat until there are no more items to compare

sort_array = [3, -3, -10, 98, 348, 4, 13, -7]

def sort(array)
  n = array.length

  loop do 
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p sort(sort_array)

# a = [1, 2, 3, 4]
# a[0], a[1] = a[1], a[0]
# p a
