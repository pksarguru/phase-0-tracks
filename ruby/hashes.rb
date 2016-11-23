
#business code / create hash
preferences = {
  name: "a",
  age: 0,
  number_of_kids: 0,
  decor_theme: "d",
  wealthy: true,
}


#Driver
#Prompt user for info and convert if needed
puts "Please enter the name of the client:"
preferences[:name] = gets.chomp

puts "Please enter age of client:"
preferences[:age] = gets.chomp.to_i

puts "Please enter number of children:"
preferences[:number_of_kids] = gets.chomp.to_i

puts "Please enter the theme of the decor:"
preferences[:decor_theme] = gets.chomp

puts "Are we on a budget?"
money = gets.chomp.downcase
if money == "yes"
  preferences[:wealthy] = false
elsif money == "no"
  preferences[:wealthy] = true
else
  preferences[:wealthy] = nil
end

#print the hash
p preferences

#update a key
puts "If you need to update a key, type in the name of the key, or type none to skip."
old_key = gets.chomp.downcase

if old_key != "none"
  old_key = old_key.to_sym
  #ask for new key name
  p "What would you like the new key name to be?"
  new_key = gets.chomp.to_sym
  preferences[new_key] = preferences.delete(old_key)
else
  p "All done."
end

#print the hash
p preferences