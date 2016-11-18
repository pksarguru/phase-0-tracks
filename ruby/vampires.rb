#How many people are you going to be hired?
puts "How many people are going to be hired?"
hired = gets.chomp.to_i

#Begin hired loop
until hired == 0
  # what's your name?
  puts "What's your name?"
  name = gets.chomp

  #How old are you? What year were you born?
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  #Checking age in 2016
  age_check = 2016 - birth_year - age
  if age_check > 1
    age_check = false
    result = -1
  elsif age_check < 0
    age_check = false
    result = -1
  else
      age_check = true
      result = 1
  end
    #debugging
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
  #debugging
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
  #debugging
  puts insurance
  puts result

  #Allergy loop
  puts "Do you have any allergies? (please list, otherwise type 'done'.)"
  while allergy = gets.chomp
    case allergy
    when "done"
      break
    when "sunshine"
      result = 0
      break
    else
      puts "anything else?"
    end
  end
  #Logic goes here
  puts "Probably not a vampire." if result >= 2 && (name != "Drake Cula" || name != "Tu Fang")
  puts "Probably a vampire." if result == 0  && (name != "Drake Cula" || name != "Tu Fang")
  puts "Almost certainly a vampire." if result < 0  && name != "Drake Cula" && name != "Tu Fang"
  puts "Definitely a vampire." if name == "Drake Cula"
  puts "Definitely a vampire." if name == "Tu Fang"
  puts "Results inconclusive." if result == 1

  hired = hired -1

end #hired loop end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."