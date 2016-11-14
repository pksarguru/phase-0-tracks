puts "What's your hamsters name"
name = gets.chomp

puts "How loud does it squeak? (scale from 1-10)"
volume = gets.chomp.to_i
if volume < 5
  puts "No big deal"
else
  puts "OMG SO LOUD"
end

puts "What color is it?"
fur = gets.chomp

puts "Is the hamster nice? (yes or no)"
adoption = gets.chomp
if adoption == "yes"
  adoption = true
else
  adoption = false
end

puts "How old is the hamster?"
age = gets.chomp.to_i
if age > 0
    puts age
else
    puts nil
end

puts "The hamster's name is #{name}."
puts "The hamster's volume of squeek is #{volume}."
puts "The hamster is the color #{fur}."
puts "The hamster should be adopted #{adoption}."
puts "The hamster is #{age} old."