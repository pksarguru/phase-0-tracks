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
if original_name != "quit"
  name_hash = {}
  flip_name(original_name)
  name_hash.store(original_name, flip_name(original_name))
  name_hash.each {|key, value| puts "#{key} is also known as #{value}."}
else
  #puts "Good choice."
end


# h = { "a" => 100, "b" => 200 }
# h.each {|key, value| puts "#{key} is #{value}" }

#puts "Do you have any allergies? (please list, otherwise type 'done'.)"
  # while original_name = gets.chomp
  #   case original_name
  #   when ""
  #     break
  #   when "sunshine"
  #     result = 0
  #     break
  #   else
  #     puts "anything else?"
  #   end
  # end












# def next_vowel(v)
#   str = "aeiou"
#   num = str.index(v)
#   if num != 4
#     num += 1
#   else
#     num = 0
#   end
#   new_v = str[num]
#   #debug
#   p new_v
# end

# def next_consonant(c)
#   str = "bcdfghjklmnpqrstvwxyz"
#   num = str.index(c)
#   if num != 20
#     num += 1
#   else
#     num = 0
#   end
#   new_c = str[num]
#   #debug
#   p new_c
# end

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

# def next_vowel(v)
#   str = "aeiou"
#   num = str.index(v)
#   if num != 4
#     num += 1
#   else
#     num = 0
#   end
#   new_v = str[num]
# end
# p next_vowel("a")

# def next_consonant(c)
#   str = "bcdfghjklmnpqrstvwxyz"
#   num = str.index(c)
#   if num != 20
#     num += 1
#   else
#     num = 0
#   end
#   new_c = str[num]
# end
# p next_consonant("b")

# new_name = ["forget", "erica"]
# first_name = ""
# i = 0
# while i < new_name[0].length
#     if (new_name[0][i]=="a" || new_name[0][i]=="e" || new_name[0][i]=="i" || new_name[0][i]=="o"|| new_name[0][i]=="u")
#       first_name = first_name + next_vowel(new_name[0][i])
#       i += 1
#     else
#       first_name = first_name + next_consonant(new_name[0][i])
#       i += 1
#     end

# end
# p first_name
