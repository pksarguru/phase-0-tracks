puts "How many employees will be processed?"
num = gets.chomp


# Main questionnaire
i=0 
while i<num.to_i
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
while age.to_i != age.to_i
  puts "Please enter a valid age?"
  age=gets.chomp
end 
puts "Cool. What year were you born? (xxxx)"
year = gets.chomp
while year.to_s.length != 4
  puts "Please until a valid date format (xxxx)?"
  year=gets.chomp
end 
puts "Would you like any garlic bread (y/n)?"
bread = gets.chomp
while bread != "y" && bread != "n"
  puts "Would you like any garlic bread?  Please answer using 'y' or 'n'."
  bread=gets.chomp
end 
puts "Would you like to enroll in the company health insurance (y/n)?"
insurance = gets.chomp
while insurance != "y" && insurance != "n"
  puts "Would you like to enroll in the company health insurance?  Please enter 'y' or 'n'."
  insurance=gets.chomp
end
puts "One by one, list any allergies you have.  Enter 'done' when finished"
allergy = gets.chomp
while allergy.downcase != "done"
  if allergy.downcase == "sunshine"
    puts "Probably a vampire"
    allergy = true
    break
  end
  puts "One by one, list any allergies you have.  Enter 'done' when finished"
  allergy = gets.chomp
end



# Check if the vampire(?) can add...

age_human = false

if 2016 - year.to_i == age.to_i
  age_human = true
end

# Check if the vampire(?) can likes garlic...

bread_human = false

if bread == "y"
  bread_human = true
end

 # Check if the vampire(?) is mortal...

insurance_human = false

if insurance == "y"
  insurance_human = true
end

# Start boolean/vampire check

vampire = true

case vampire
when age_human && bread_human && insurance_human
  puts "Probably not a vampire"
when !age_human && !bread_human && !insurance_human
  puts "Almost certainly a vampire"
when name.downcase == "drake cula" || "tu fang"
  puts "Definitely a vampire"
when allergy == true
  puts "Yea, probably a vampire"
else
  puts "Results inconclusive"
end

vampire

i += 1
end

