# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split the items up
  # iterate over items and pass items to add method
  # call add method
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
g_list = {}
def create_list(g_list, str)
  g_arr = str.split(" ")
  g_arr.each do |item|
    g_list[item] = 1
  end
  g_list
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: take the item from some other input
# output: the list with the item and quantity added

def add_item_to_list(g_list, item, num_of = nil)
  g_list[item] = num_of
end

# Method to remove an item from the list
# input: the list with the food
# steps: delete the key val
# output: the list with out one key, val pair

def remove_item (g_list, d_item)
  g_list.delete(d_item)
end

# Method to update the quantity of an item
# input: list and the key to update the value
# steps: pass in list and change
# output:list with updated value

def change_num(g_list, item, num_of)
  add_item_to_list(g_list, item, num_of)
end


# Method to print a list and make it look pretty
# input: take a list
# steps: add some lines, add title, loop a list
# output: print pretty list
def prn(list)
  puts "-"*60
  puts "Next week grocery list:"
  puts "-"*60
list.each do |item,num|
  puts "#{item} qty #{num}"
  end
  puts "-"*60
end

#Driver code
food = "carrots apples cereal pizza"
p create_list(g_list, food)
add_item_to_list(g_list, "milk", 2)
p g_list
remove_item(g_list, "milk")
p g_list
change_num(g_list, "apples", 6)
p g_list

next_week_list = {}
food = "lemonade tomatoes onions ice-cream"
prn(create_list(next_week_list, food))
change_num(next_week_list, "lemonade", 2)
change_num(next_week_list, "tomatoes", 3)
change_num(next_week_list, "ice-cream", 4)
prn(next_week_list)
remove_item(next_week_list, "lemonade")
change_num(next_week_list, "ice-cream", 1)
prn(next_week_list)
