# RELEASE 2/3

# Encrypt
# Ask for some input
  # store input into a variable
  # find length of variable (.length)
    # 
# Run loop for length of the string.
  # change each character in the string to the coincding letter
  # increase index by 1
  # if character == " " then leave it as is
  # print result

def encrypt(word)
   idx = 0
   while idx < word.length
       
      if word[idx] == " "
        idx += 1
      else
        word[idx] = word[idx].next
       idx += 1
      end
   end
  return word
end

# Run loop for length of string
  # establish variable equal to the alphabet
    # set its own index
  # compare words[idx] to index of alphabet until they match
    # set word[idx] equal to alpha[idx-1]
    # reset alpha[idx]
    # and increment word[idx]

def decrypt(word2)
   idx = 0
   idx2 = 0
   alpha = "abcdefghijklmnopqrstuvwxyz"
   while idx < word2.length
       until word2[idx] == alpha[idx2]
           idx2 +=1
       end
       word2[idx] = alpha[idx2-1]
       idx += 1
       idx2 = 0
   end
   return word2
end



# RELEASE 4
puts decrypt(encrypt("swordfish"))

# it is using the order of operations to run the interior method first then the exterior method afterwards, providing the same word exactly


# RELEASE 5

# ask user if they want to encrypt or decrypt password
  # use "if" if they dont select encryt or decrypt then reprompt them to do so
# 
# retrieve input of users password
  # initiate code for either encrypt or decrypt 
  # print the result
# 

puts "Would you like to encrypt or decrypt your password"

input = gets.chomp

while input != ("encrypt" && "decrypt")
  puts "Please enter encrypt or decrypt"

  input = gets.chomp
end

puts "What your password"

password = gets.chomp

if input == "encrypt"
  puts encrypt(password)
else
  puts decrypt(password)
end











