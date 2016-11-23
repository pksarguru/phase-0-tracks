#Begin psuedocode

# Get input for name, first and last
#   get input
# Check if there is a first and last name
#   if not, prompt for input until valid input

# split name into different parts of an array
# rearrange array to switch first name and last name

# split array into individual letters

# define array with "aeiou"
# find vowels in split array and set them equal to next index in "aeiou" array

# if letter of an array doesnt equal a vowel, 
#   set letter equal to next letter, unless it's a vowel

# return name

name = "Felicia Torres"

name_array = name.split('')

p name_array

# name_letters = name_array.map do |name|
#   name.split('')
# end

# p name_letters


vowels = ['a','e','i','o','u']

name_array.keep_if do |letter|
  letter = "r"
end


p name_array





