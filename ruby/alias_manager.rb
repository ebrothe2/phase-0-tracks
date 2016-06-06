#writing a method for creating a fake name from a real name
#input is a first and last name
#first divide the first and last name into seperate strings and switch their order

def name_changer(str)
  puts "What is your name? (first and last)"
  name = gets.chomp.split(' ')
  name.rotate!

  name[0].downcase!
  name[1].downcase!

#now we have an array of two strings assigned to name
#split name into individual letters
  name[0] = name[0].split('')
  name[1] = name[1].split('')

#p name

#now there is an array full of strings, each individual letter of the new first name
#need to look at each letter, if consonant go to next consonant and if vowel go to next vowel

  name.map!{|letter| letter.next}

#p name

  new_first_name = name[0].join('')
  new_last_name = name[1].join
  p new_first_name.capitalize
  p new_last_name.capitalize

end

puts "What name would you like to change? enter quit to stop"
  name = gets.chomp
  until name == "quit"
    name_changer
  end


