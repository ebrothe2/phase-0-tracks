class Santa
attr_reader :age, :ethnicity
attr_accessor :gender

  def initialize(gender, ethnicity)
 #   puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ['Rudolph','Dasher','Dancer','Prancer','Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    @age = rand(140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age = @age.to_i + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << (reindeer_name)
  end

#getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

#setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end

santa = Santa.new('male','white')
santa.celebrate_birthday
puts "Santa's age is #{santa.age}"
p santa.age
p santa.get_mad_at('Vixen')
santa.speak
santa.eat_milk_and_cookies('oreo')
p santa.gender = "I'm not sure what my gender is"

santas_list = []
santas_list << Santa.new('female', 'black')
santas_list << Santa.new('male', 'Latino')

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "Any", "undecided"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Polish", "Greek", "French", "Swedish"]

# santa_genders.length.times do |each|
#   santas_list << Santa.new(example_genders[each], example_ethnicities[each])
# end

index = 0
until index >= 20
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
      puts santa.age
      puts santa.gender
      puts santa.ethnicity
  index += 1
end

