#method that takes a string
#split the string and swap the first and last name
#changing them all to lowercase
#checking to see if there are vowels
#substitute the next vowel
#checking to see if there are not vowels
#substitute the next consonant
#edge cases?
#using .capitalize at the end
#rejoin with a space
#print

def next_vowel(v)
  str = "aeiou"
  num = str.index(v)
  if num != 4
    num += 1
  else
    num = 0
  end
  new_v = str[num]
end
#debugging
#p next_vowel("a")

def next_consonant(c)
  str = "bcdfghjklmnpqrstvwxyz"
  num = str.index(c)
  if num != 20
    num += 1
  else
    num = 0
  end
  new_c = str[num]
end
#debugging
#p next_consonant("b")

# Original flip code that I then added to.
# def flip_name(name)
#   new_name = name.downcase.split(" ")
#   #capitalize first and last name
#   new_name[0] = new_name[0].capitalize!
#   new_name[1] = new_name[1].capitalize!
#   #rejoin
#   new_name = new_name[1] + ' ' + new_name[0]
#   #debug
#   p new_name
# end

def flip_name(name)
  new_name = name.downcase.split(" ")
#debugging new_name = ["forget", "erica"]
  first_name = ""
  i = 0
  while i < new_name[0].length
      if "aeiou".include? new_name[0][i]
        first_name = first_name + next_vowel(new_name[0][i])
        i += 1
      else
        first_name = first_name + next_consonant(new_name[0][i])
        i += 1
      end
  end
  #debugging
  #p first_name

  second_name = ""
  l = 0
  while l < new_name[1].length
      if "aeiou".include? new_name[1][l]
        second_name = second_name + next_vowel(new_name[1][l])
        l += 1
      else
        second_name = second_name + next_consonant(new_name[1][l])
        l += 1
      end
  end
  #debugging
  #p second_name
  #capitalize first and last name
  first_name = first_name.capitalize!
  second_name = second_name.capitalize!
  #rejoin
  new_name = second_name + ' ' + first_name
  #debug
  #p "#{name} is now #{new_name}"
end

#p flip_name("Felicia Torres")

#User Interface
puts "What name shall we base your alias on? (enter quit when you are done)"
original_name = gets.chomp
name_hash = {}
while original_name != "quit"
  flip_name(original_name)
  name_hash.store(original_name, flip_name(original_name))
  #debugging
  #puts name_hash
  puts "Any other name you'd like to try?"
  original_name = gets.chomp
end
name_hash.each {|key, value| puts "#{key} is also known as #{value}."}






