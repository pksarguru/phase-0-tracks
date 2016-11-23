#method that takes a string
#split the string and swap the first and last name
#changing them all to lowercase
#checking to see if there are vowels
#substitute the next vowel
#checking to see if there are not vowels
#substitute the next consonant
#edge cases
#using .capitalize at the end


def next_vowel(v)
  str = "aeiou"
  num = str.index(v)
  if num != 4
    num += 1
  else
    num = 0
  end
  new_v = str[num]
  p new_v
end

def next_consonant(c)
  str = "bcdfghjklmnpqrstvwxyz"
  num = str.index(c)
  if num != 20
    num += 1
  else
    num = 0
  end
  new_c = str[num]
  p new_c
end

next_consonant("z")
