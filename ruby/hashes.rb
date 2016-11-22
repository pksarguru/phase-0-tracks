# Data to gather from applicant:
# Name
# Age
# # of Children
# Decor theme
# Do you like blue

# Being psuedocode:

# Write prompt for each separate data that needs to be gathered. 
#   Convert input to appropriate data type
# Get input and put into hash assigned to appropriate keys
# Print hash to screen
# Prompt user to update item of hash if desired (list types of data)
#   get desired key value
#   prompt again for what the updated value is
#     get updated input
# print hash to screen

client = {}

puts "What is your name?"
input_name = gets.chomp
client[:name] = input_name.capitalize

puts "What is your age?"
input_age = gets.chomp
client[:age] = input_age.to_i

puts "How many children do you have?"
input_children = gets.chomp
client[:children] = input_children.to_i

puts "What kind of decor theme do you prefer?"
input_decor = gets.chomp
client[:decor] = input_decor

puts "Do you like blue (y/n)?"
input_blue = gets.chomp
blue = input_blue == "y"
client[:blue] = blue

p client

puts "Which answer would you like to update (name/age/children/decor/blue)?"
input_change = gets.chomp
puts "What would you like your revised data to be?"
input_change_data = gets.chomp

client[input_change.to_sym] = input_change_data

p client

