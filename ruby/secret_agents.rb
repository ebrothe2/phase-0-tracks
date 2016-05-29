#name the method
#assign input to a variable
#tell the method to return one letter forward in the alphabet for each letter of the input that was assigned to the variable

def encrypt
  puts "enter password"
    password = gets.chomp
   index = 0
    while index < password.length
    password[index] = password[index].next
    index += 1
  end
  p password
end

encrypt


#name a second method
#assign desired input to a variable
#tell this method to take the output of previous method back to what is was originally typed in as. So return one letter previous from input