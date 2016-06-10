class Puppy

  def initialize
    puts "Initializing new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times {puts "Woof!"}
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(human_age)
    dog_years = human_age * 7
  end

  def play
    puts "Run, jump, catch"
  end

end

scotch = Puppy.new
scotch.fetch('ball')
scotch.speak(3)
scotch.roll_over
p scotch.dog_years(10)
scotch.play

class Cats

  def initialize
#    puts "Initializing new cat instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times {puts "Meow!"}
  end

end

whiskers = Cats.new
whiskers.fetch("yarn")
whiskers.speak(6)

our_cats = []

index = 0
until index > 49
  our_cats << Cats.new
  index += 1
end

our_cats.each do |cat|
  cat.fetch('yarn')
  cat.speak(1)
end

