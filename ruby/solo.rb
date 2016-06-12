#Design a class
#designing a class for a toddler
#3 attributes a toddler can have;
#a toddler can have an age of 1-3
#a toddler has a weight
#a toddler has an eye color

#3 methods a toddler needs
#a toddler plays
#a toddler can lose their mind aka have a temper tantrum
#a toddler can, if you're lucky, take a nap

class Toddler
attr_reader :age, :eye_color
attr_accessor :weight

  def initialize(weight, eye_color)
    @weight = weight
    @eye_color = eye_color
    @age = rand(3)
  end

  def play(activity)
    puts "My toddler likes to #{activity}!"
  end

  def tantrum
    puts "SCREEEAAAMMINNGGG TODDLER!!!!!"
  end

  def nap_time
    puts "zzzzzzzzz...snoring....zzzzzz"
  end

end

# checking toddler class to make sure everything works

# toddler = Toddler.new(27, 'blue')
# p toddler.weight
# p toddler.eye_color
# p toddler.age
# toddler.play('play peek-a-boo')
# toddler.tantrum
# toddler.nap_time

#user interface

lots_of_toddlers = []

add_toddler = true

while add_toddler
  puts "Enter your toddler's weight"
    weight = gets.chomp.to_i
  puts "Enter your toddler's eye color"
    eye_color = gets.chomp.to_s
  lots_of_toddlers << Toddler.new(weight,eye_color)

  puts "Would you like to enter another toddler's information? enter done when finished"
    user_response = gets.chomp
break if user_response == 'done'
  #if user_response == 'done'
  #  add_toddler = false
  #end
end

#p lots_of_toddlers

 lots_of_toddlers.each do |toddler|
  puts "Weight: #{toddler.weight}"
  puts "Eye Color: #{toddler.eye_color}"
  puts "Age: #{toddler.age}"
 end

