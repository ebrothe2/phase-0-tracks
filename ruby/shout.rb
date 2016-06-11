# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :) :) :)"
#   end
# end

# p Shout.yell_angrily("Darn it")
# p Shout.yelling_happily("Oh Great")

module Shout
  def yell_angrily(words)
    words + '!!!!' + ' :('
  end

  def yelling_happily(words)
    words + '!!!!!!!!' + ' :) :) :)'
  end
end

class Referee
 include Shout
end

class Coach
  include Shout
end

referee = Referee.new
p referee.yell_angrily('Red Flag')
p referee.yelling_happily('Goal')

coach = Coach.new
p coach.yell_angrily('Sit down')
p coach.yelling_happily('We Won')

