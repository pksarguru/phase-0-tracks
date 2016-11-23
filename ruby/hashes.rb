
#business code
h = {
  name: "a",
  age: 0,
  number_of_kids: 0,
  decor_theme: "d",
  wealthy: true,
}


#Driver
#Prompt user for info and convert if needed
puts "Please enter the name of the client:"
h[:name] = gets.chomp

puts "Please enter age of client:"
h[:age] = gets.chomp.to_i

puts "Please enter number of children:"
h[:number_of_kids] = gets.chomp.to_i

puts "Please enter the theme of the decor:"
h[:decor_theme] = gets.chomp

puts "Are we on a budget?"
money = gets.chomp.downcase
if money == "yes"
  h[:wealthy] = false
elsif money == "no"
  h[:wealthy] = true
else
  h[:wealthy] = nil
end

#print the hash
p h

#update a key
puts "If you need to update a key, type in the name of the key, or type none to skip."
old_key = gets.chomp.downcase

def change_key(x)
  p "What would you like the new key name to be?"
  new_key = gets.chomp.to_sym
  h[new_key] = h.delete(x)
end

if old_key != "none"
  old_key = old_key.to_sym
  change_key(old_key)
  p "not none"
else
  p "All done."
end



#print the hash
p h