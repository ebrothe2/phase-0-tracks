# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# allows you to access a necessary file. require_relative seems to be a shorthand way to access the file whereas require needs the full path.
# require uses current directory & require_relative uses the directory of  where the program resides.
require_relative 'state_data'

class VirusPredictor

# creates and instance of VirusPredictor and inputs state, pop_density and pop
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# virus_effects is a public method to use for outputting predicted deaths and the speed of virus spread
  def virus_effects
    return "#{predicted_deaths(@population_density, @population, @state)}"+ "#{speed_of_spread(@population_density)}"
  end

  private
#outputs a print statement that compares population density with total population to find #of deaths predicted
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes in population density and needs to determine speed of spread. Outputs a print statement
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, state_info|
  STATE_DATA["#{state}"][:virus_effects] = VirusPredictor.new(:"#{state}", state_info[:population_density], state_info[:population])
 end
puts "The state by state report is as follows:"
puts ""
STATE_DATA.each do |state, state_info|
  (STATE_DATA["#{state}"][:virus_effects]).virus_effects
end

=begin original driver code
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end



