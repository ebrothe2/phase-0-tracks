#writing a method for creating a fake name from a real name
#input is a first and last name
#first divide the first and last name into seperate strings and switch their order

# def name_changer(str)
#   puts "What is your name? (first and last)"
#   name = gets.chomp.split(' ')
#   name.rotate!

#   name[0].downcase!
#   name[1].downcase!

# #now we have an array of two strings assigned to name
# #split name into individual letters
#   name[0] = name[0].split('')
#   name[1] = name[1].split('')

# #p name

# #now there is an array full of strings, each individual letter of the new first name
# #need to look at each letter, if consonant go to next consonant and if vowel go to next vowel
# #could not get it to work so just iterated through each letter and changed it to the next

#   name[0].map!{|letter| letter.next}
#   name[1].map!{|letter| letter.next}

# #p name

#   new_first_name = name[0].join('')
#   new_last_name = name[1].join
#   p new_first_name.capitalize
#   p new_last_name.capitalize

# end

# loop do
#   puts "What name would you like to change? Enter quit to stop"
#     user_input = gets.chomp
#     break if user_input == "quit"
#     name_changer(user_input)
# end
def is_letter?(char)
  ('abcdefghijklmnopqrstuvwxzy').include? char.downcase
end

def is_vowel?(letter)
  ['a','e','i','o','u'].include?(letter.downcase)
end

def get_next_vowel(letter)
# have a letter
# find where letter is in a string (find index)
# get the next index and return element at that next index
  if letter.downcase == 'u'
    'a'
  else
    index_of_letter = ('aeiou').index(letter.downcase)
    next_index = index_of_letter+1
    ('aeiou')[next_index]
  end
end

def get_next_consonant(letter)
  if letter.downcase == "z"
    "b"
  else
    index_of_letter = ('bcdfghjklmnpqrstvwxyz').index(letter.downcase)
    next_index = index_of_letter+1
    ('bcdfghjklmnpqrstvwxyz')[next_index]
  end
end

def encode_name(name)
#create new word
  encoded_name = ""
# for each letter
  name.split('').each do |letter|
    if is_letter?(letter)
      if is_vowel?(letter)
        encoded_name << get_next_vowel(letter)
      else
        encoded_name << get_next_consonant(letter)
      end
    else
      encoded_name << (letter)
    end
  end

return encoded_name
  # - determine if it is a vowel (because if not a vowel it is a consonant)
    #if it is a vowel; go to next vowel
    #if it is a consonant; go to next consonant
      #take each "next"vowel and consonant (the new letters) and enter into new word
#return the new word

end