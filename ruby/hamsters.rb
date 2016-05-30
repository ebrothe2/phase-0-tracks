#Ask the user if the hamster has a name and if so, what it is.
#NAME: If hamster doesn't have a name, let the user know we will provide it with a great name.
#VOLUME: Ask user how loud the hamster is on a scale of 1-10
#COLOR: Ask fur color
#ADOPT: Ask whether the hamster is good candidate for adoption?
#AGE:Ask for estimated age
#AGE-NIL: if estimated age is blank assign nil

#gathering data from user on their hamster
puts "Welcome to Hamster Haven! \r\nThis is the place where hamsters are saved, \r\nhave an opportunity to be rejuvenated, \r\n and then\r\nare adopted into caring homes."
puts "\r\nWe would like to ask you some questions about your hamster."

valid_input = false
until valid_input
puts "\r\nFirst, all our hamsters are referred to by name."
puts "Have you given your hamster a name? (y/n)"
  hamster_name = gets.chomp
  if hamster_name == "y"
    valid_input = true
    puts "Oh good. We like names.\r\nWhat is your hamster's name?"
  hamster_name = gets.chomp
    puts "Totally cool, #{hamster_name} is a good name for a hamster."
  elsif
    hamster_name == "n"
    valid_input = true
    puts "That's ok. \r\nWe will be happy to provide your hamster with just the right name."
  else
    puts "Please use only n for not named or y for named."
  end
end

puts "\r\nWe want to make sure we match a talkative hamster to someone who enjoys listening to their hamster's banter."
puts "\r\nTherefore, we need to know how talkative (some people might call it noisy) your hamster is."

puts "On a scale of 1-10; 1 being extremely quiet, and 10 being extremely noisy, how loud would you rate your hamster?"
  squeak_volume = gets.chomp
  squeak_volume = squeak_volume.to_i

puts "What color is the hamster's fur?"
  fur_color = gets.chomp

valid_input = false
until valid_input
puts "Is your hamster a good candidate for adoption? (y/n)"
  adoptive_candidate = gets.chomp
  if adoptive_candidate == "y"
    valid_input = true
    puts "OK. We will make every effort to find the best home for your hamster?"
    elsif
    adoptive_candidate == "n"
    valid_input = true
    puts "That's ok. We welcome your hamster to live here at Hamster Haven."
  else
    puts "Please use only n for not a good candidate for adoption or y for is a good candidate for adoption."
  end
end

#estimated age returns a string
#try to see if string is empty
#if true and string is empty then puts n/a and assign nil
#if false and string is not empty try then setting estimated age to in integer?
puts "What is the estimated age of hamster?"
  estimated_age = gets.chomp
  if estimated_age.empty? == true
    estimated_age = nil
  else
    estimated_age = estimated_age.to_i
  end


puts "Thank you for saving your hamster and bringing them to the sanctuary!"
puts  "\r\nHere is a summary of #{hamster_name}'s information:"

puts "Hamster's name is #{hamster_name}"
puts "Hamster's squeak_volume is #{squeak_volume}"
puts "Hamster's fur color is #{fur_color}"
puts "This hamster is a good adoptive candidate = #{adoptive_candidate}"
puts "This hamster's approximate age is #{estimated_age||"n/a"}"
puts "Thank you for saving your hamster and bringing them to the sanctuary!"