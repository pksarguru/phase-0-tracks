#How many people are you going to be hired?
puts "How many people are going to be hired?"
hired = gets.chomp.to_i

until hired == 0
# what's your name?
  puts "What's your name?"
  name = gets.chomp

#How old are you? What year were you born?
  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  age_check = 2016 - birth_year - age

  case age_check
  when 0, 1
      age_check = true
      result = 1
  else
      age_check = false
      result = -1
  end

puts age_check
puts result

#Should we order you garlic bread?
puts "Would you like an order of garlic bread?"
garlic = gets.chomp
case garlic
when "yes"
  garlic = true
  result += 1
else
  garlic = false
end

puts garlic
puts result

#Would you like health insurance?
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
case insurance
when "yes"
  insurance = true
  result += 1
else
  insurance = false
end

puts insurance
puts result

puts "Probably not a vampire." if result == 3
puts "Probably a vampire." if result == 2
puts "Almost certainly a vampire." if result <= 0
puts "Definitely a vampire." if name == "Drake Cula"
puts "Definitely a vampire." if name == "Tu Fang"
puts "Results inconclusive." if result == 1

hired = hired -1

end