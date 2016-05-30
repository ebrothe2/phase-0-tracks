#name the method
#assign input to a variable
#tell the method to return one letter forward in the alphabet for each letter of the input that was assigned to the variable
def encrypt(str)
   index = 0
   password = str
     while index < str.length
     if password[index] == " "
        password[index] = " "
     elsif password[index] != "z"
        password[index] = password[index].next
     else password[index] = "a"
     end
     index += 1
    end
   p password
 end

 #encrypt("z f")




#name a second method
#assign desired input to a variable
#tell this method to take the output of previous method back to what is was originally typed in as. So return one letter previous from input
#print each letter in coded password, find each letter in alphabet string and print the previous index in the alphabet

def decrypt(encrypted_string)
   index = 0
   decrypt_password = encrypted_string
   while index < encrypted_string.length
     letter = decrypt_password[index]

     index_of_letter = "abcdefghijklmnopqrstuvwxyz".index(letter)

     #would now have index returned of where letter is in alphabet string
     # decrypt_password == '1at'
     #now could tke index of where each letter is in the alphabet and assign it the the index before it
     new_index_of_letter = index_of_letter - 1

     #have correct index of where in the alphabet the new letter should print out
     decrypt_password[index] = "abcdefghijklmnopqrstuvwxyz"[new_index_of_letter]

      index += 1
   end
   p decrypt_password
 end

#decrypt("afe")

#decrypt(encrypt("swordfish"))
#this works because first both methods are defined above where they are called in the ruby doc. Then they are also telling the program which to run first with the parenthesis. First it knows to apply encrypt method and then apply the decrypt because of the parenthesis telling it the order of operations

puts "Would you like the encrypt a password or decrypt a password? (encrypt/decrypt)"
    user_choice = gets.chomp
puts "Enter the word you would like encrypted or decrypted"
    user_password = gets.chomp
    if user_choice == "encrypt"
      encrypt(user_password)
    elsif user_choice = "decrypt"
      decrypt(user_password)
    end


