puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "Cool. What year were you born? (19xx)"
year = gets.chomp
while 
  puts "Would you like any garlic bread?  Please answer using 'y' or 'n'."
  bread=gets.chomp
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


# Check if the vampire(?) can add...

vampire_age = false

if 2016 - year.to_i == age.to_i
  vampire_age = true
end


if bread == "y"
  vampire_bread = true
else 
  vampire_bread = false
end

puts vampire_bread