puts "What's your hamster's name?"
name = gets.chomp
puts "What volume level do you prefer (1-10)?"
volume = gets.to_i

while volume>10 || volume<1
      puts "Please enter a value between 1 and 10"
      puts "What volume level do you prefer (1-10)?"
      volume = gets.to_i
end

puts "What color fur does this little guy have?"
fur = gets.chomp
puts "Is this hamster a good candidate for adoption? (y/n)"
adoptable = gets.chomp

while adoptable!="y" && adoptable!="n"
  puts "Please enter y or n"
  puts "Is this hamster a good candidate for adoption? (y/n)"
  adoptable = gets.chomp
end

if adoptable=="y"
  adoptable = true
else
  adoptable = false
end

puts "What's the estimated age of this little furball? (optional)"
age = gets.chomp

until age.to_i.to_s == age || age == ""
  puts "Please enter a numeric age"
  puts "What's the estimated age of this little furball? (optional)"
  age = gets.chomp
end

if age == ""
  age = nil
else
  age = age.to_i
end

print "Okay, let me get this straight. #{name} likes a volume level of #{volume.to_s}. #{name} has #{fur} fur, "

if adoptable
  print "and you said #{name} is adoptable."
else
  print "and #{name} is not adoptable, unforch."
end

if age != nil
  puts "#{name} is #{age} years-old."
else
  puts ""
end

 # print "What's your hamster's name?"
# store name as a variable
# ask "What volume level do you prefer (1-10)?"
# check if value is an integer between 1-10
# store volume level as a variable
# if not
#     give an error message
#     repeat the question
# store volume level as a variable
# ask "What color fur does this little guy have?"
# store fur_color as variable
# ask "Is this hamster a good candidate for adoption? (y/n)"
# if not yes or no
#   give an error message
#   repeat the question
# Ask "What's the estimated age of this little furball?"
# if response is not nil or integer:
    # same loop
 # if integer, store variable
 