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
attr_reader :age :eye_color
attr_accessor :weight

  def initialize(weight,eye_color)
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