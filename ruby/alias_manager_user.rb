require_relative 'alias_manager'

#user interface
names = {}

loop do
  puts "What name would you like to change? Enter quit to stop"
    user_input = gets.chomp
    break if user_input == "quit"
    names[user_input] = encode_name(user_input)
end

names.each do |plain_name, coded_name|
  puts "The name #{plain_name} is now #{coded_name}."
end
