#Ask the user what the hampster's name is
#Ask user how loud the hamster is on a scale of 1-10
#Ask fur color
#Ask whether the hamster is good candidate for adoption?
#Ask for estimated age
  #if estimated age is blank assign nil

puts "What is the hamster's name?"
  hamster_name = gets.chomp
puts "How loud is your hamster on a scale of 1-10?"
  squeak_volume = gets.chomp
  squeak_volume = squeak_volume.to_i
puts "What color is the hamster's fur?"
  fur_color = gets.chomp
puts "Is your hamster a good candidate for adoption? (y/n)"
  adoptive_candidate = gets.chomp
  if adoptive_candidate == "y"
    adoptive_candidate = true
  elsif adoptive_candidate == "n"
    adoptive_candidate = false
  end
#estimated age returns a string
#try method to see if string is empty
#if true and string is empty then puts n/a and assign nil
#if false and string is not empty try then setting estimated age to in integer?
puts "What is the estimated age of hamster?"
  estimated_age = gets.chomp
  if estimated_age.empty? == true
    estimated_age = nil
  else
    estimated_age = estimated_age.to_i
  end
puts "Hamster's name is #{hamster_name}"
puts "Hamster's squeak_volume is #{squeak_volume}"
puts "Hamster's fur color is #{fur_color}"
puts "This hamster is a good adoptive candidate = #{adoptive_candidate}"
puts "This hamster's approximate age is #{estimated_age||"n/a"}"
puts "Thank you for saving your hamster and bringing them to the sanctuary!"
