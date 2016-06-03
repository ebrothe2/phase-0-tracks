#enter client information
#print a summary of the information when complete
#if change needed allow for information to be updated
#print updates

#enter client info
#convert to appropriate data type

client_information = {}
puts "Enter client name"
  client_information[:name] = gets.chomp
puts "Enter client age"
  client_information[:age] = gets.chomp.to_i
puts "Enter number of children"
  client_information[:number_of_childern] = gets.chomp.to_i
puts "Enter decor theme"
  client_information[:decor_theme] = gets.chomp
puts "Is there a budget? y/n"
  client_information[:budget] = gets.chomp
  if client_information[:budget] == "y"
    client_information[:budget] = true
  else client_information[:budget] = false
  end
puts "Is there a tight time frame? y/n"
  client_information[:tight_time_frame] = gets.chomp
  if client_information[:tight_time_frame] == "y"
    client_information[:tight_time_frame] = true
  else client_information[:tight_time_frame] = false
  end

puts "Client Information Summary"
puts "Name: #{client_information[:name]}"
puts "Age: #{client_information[:age]}"
puts "Number of children: #{client_information[:number_of_childern]}"
puts "Decor theme: #{client_information[:decor_theme]}"
puts "Budget? #{client_information[:budget]}"
puts "Tight time frame? #{client_information[:tight_time_frame]}"

puts "Enter any key that needs to be changed or updated: if everything correct enter: done"
  update_this_key_value = gets.chomp
  if update_this_key_value == "done"
  else
    puts "What does it need to be changed to?"
    new_key_value = gets.chomp
    if update_this_key_value == "name"
      client_information[:name] = new_key_value
    elsif update_this_key_value == "age"
      client_information[:age] = new_key_value
    elsif update_this_key_value == "number of children"
      client_information[:number_of_children] = new_key_value
    elsif update_this_key_value == "budget"
      client_information[:budget] = new_key_value
    elsif update_this_key_value == "tight time frame"
      client_information[:tight_time_frame] = new_key_value
    end
  end

  p client_information

  puts "Thanks for entering the client information"
