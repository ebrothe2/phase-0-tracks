# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# [fill in any steps here]
# set default quantity array[key] = 1
# print the list to the console [can you use one of your other methods here?] Use print_list
# output: [what data type goes here, array or hash?] hash

def create_grocery_list(groceries)

  groceries = groceries.split(" ")

  list = {}

  groceries.map do |item|
  list[item] = 1
  end

  print_list(list)

  return list
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: Adding items to groceries list
# output: Updated Hash

def add_item(item, list, quantity = 1)

  list[item] = quantity

  return list

end




# Method to remove an item from the list
# input: Item name, list
# steps: Removing an item from the list
# output: Updated Hash

def remove_item(item, list)
  list.delete(item)
  return list
end


# Method to update the quantity of an item
# input: Item name, desired quantity, list
# steps: Assign new quantity to item name
# output: Updated Hash

def update_quantity(item, quantity, list)

  list[item] = quantity

  return list

end


# Method to print a list and make it look pretty
# input: Item hash
# steps: Iterate through the hash to print item name and quantity (Note: Add seperation of key and value on string )
# output: Return string

def print_list(list)

  list.each do |key, value|
  puts "#{key} => #{value} "
  end

end

create_grocery_list("apples oranges carrots")