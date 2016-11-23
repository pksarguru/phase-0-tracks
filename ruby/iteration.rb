# def method
#   puts "This happening before the block"
#   yield
#   puts "This is happening after the block"
# end

# method {puts "This is the block"}

# #.each live-code video

# letters = ['a', 'b', 'c', 'd', 'e']
# new_letters = []

# puts "Original data:"
# p letters
# p new_letters

# letters.each do |letter|
#   new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters

# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# numbers.each do |digit, word|
#   puts "#{digit} is spelled out as #{word}"
# end

# #.map live-code video

# letters = ['a', 'b', 'c', 'd', 'e']

# puts "Original data:"
# p letters

# modified_letters = letters.map do |letter|
#   puts letter
#   letter.next
# end

# puts "After .map call:"
# p letters
# p modified_letters

drinks = ['coffee', 'beer', 'wine']

menu = {
  coffee: "$2",
  beer: "$7",
  wine: "$8",
  water: "$1"
}

p drinks
p menu

drinks.each do |drink|
  puts "#{drink} rules!"
end

p drinks

menu.each do |drink, price|
  puts "#{drink} costs #{price}"
end

p menu

new_drinks = drinks.map do |drink|
  puts "#{drink} rules!"
end

p new_drinks

drinks.map! do |drink|
  drink.capitalize
end

p drinks

drinks.each do |drink|
  puts "#{drink} rules!"
end


