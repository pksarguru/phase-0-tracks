arr = [42, 89, 23, 1]

def search_array(array, x)
  i = 0
  while i < array.length
    if array[i] == x
      return i
      # when you get to a return, EXPLICITLY stops and returns the value
      # Otherwise the implicit return is nil because no "p" or "puts" and it's the last value evaluated... so it's implicitly returned
    end
    i += 1
  end
end
p search_array(arr, 1)


def fib(x)
  arr = [0, 1]
  a = 0
  b = 1
  i = 2
  while i < x
    c = a + b
    arr = arr << c
    i += 1
    a = b
    b = c
  end
  p arr
end
# debug test for large number
# p fib(100).include? 218922995834555169026

# take an array
# create a new empty array
# put the first number of the old array in the first spot in the new array
# compare the next number in the old array with the one in the new array
# if the number is smaller than the number in the new array put it at the beginning
# if not put it at the end
# iterate through the old array and compare the number to the number at the beginning
# if smaller put at the beginning
# check against all the numbers already in array
# if smaller put before the number that you just checked against
# if bigger than all the numbers put it at the end

a = [1, 5, 3, 4, 6]

def sort(array)
  arr = [array[0]]
  array.delete_at(0)
  i = 0
  while i < array.length
    if array[i] <= arr[i]
      arr.insert(i, array[i])
      i += 1
    else arr = arr << array[i]
      i += 1
    end
  end
  arr
end

sort(a)