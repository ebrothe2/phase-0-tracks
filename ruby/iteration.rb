def say_goodbye
  puts "See ya later"
  yield ("Oscar")
end

say_goodbye { |name| puts "until next time #{name}!"}

shopping_list = ["lettuce","onions","beer","burgers"]

p shopping_list

shopping_list.each do |grocery_item|
  p grocery_item
end

p shopping_list

shopping_list.map! do |grocery_item|
  puts grocery_item.upcase
  grocery_item.upcase
end

p shopping_list

recipe = {
  "flour" => true,
  "sugar" => true,
  "salt" => true,
}

p recipe

recipe.each do |ingredient|
  puts ingredient
end

p recipe

