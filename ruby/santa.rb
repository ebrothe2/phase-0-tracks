class Santa
  @reindeer_ranking = ['Rudolph','Dasher','Dancer','Prancer','Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
  @age = 0
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
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

  def age
    @age
  end

  def get_mad_at
    p @reindeer_ranking
  end

end

# santas_list = []
# santas_list << Santa.new('female', 'black')
# santas_list << Santa.new('male', 'Latino')
# santa_genders = ["undecided", "transgender", "female", "male"]
# santa_ethnicities = ['Polish', 'Moroccan', 'Mexican', 'Brazilian']

# santa_genders.length.times do |each|
#   santas_list << Santa.new(santa_genders[each], santa_ethnicities[each])
# end

# p santas_list

santa = Santa.new('male','white')
santa.celebrate_birthday
puts "Santa's age is #{santa.age}"
santa.get_mad_at
santa.speak
santa.eat_milk_and_cookies('oreo')