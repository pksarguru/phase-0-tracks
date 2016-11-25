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

def fake_name(name)

  name_array = name.split('')

  name_array.map! do |letter|
    vowels = ['a','e','i','o','u', 'a']
    i = 0
    until i>vowels.length
      if i == 5
        letter = letter.next
        if vowels.include?(letter.downcase)
          letter = letter.next
        end
        break
      elsif letter.downcase == vowels[i]
        letter = vowels[i+1]
        break
      elsif letter.downcase == " "
        break
      else
        i += 1 
      end 
    end
    letter
  end

  p name_array

  final_name = name_array.join.split(' ').rotate.join(' ')

  return final_name

end 

# name_array.map! do |letter|
#   fake_name(letter)
# # end

# final_name = name_array.join.split(' ').rotate.join(' ')

p fake_name(name)






