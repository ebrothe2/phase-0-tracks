

puts "What is your name?"
  name = gets.chomp
puts "How old are you?"
  age = gets.chomp
puts "What year were you born?"
  year_born = gets.chomp
#if current year - year_born > || < year_born then age is false
    current_year = 2016
    current_year - year_born = true_age
      if true_age == age
        age = true
      else
        age = false
      end

puts "Would you like some garlic bread? (y/n)"
  eats_garlic_bread = gets.chomp
  if eats_garlic_bread = y
    eats_garlic_bread = true
  elsif eats_garlic_bread = n
    eats_garlic_bread = false
  end

puts "Would you like to enroll for Health Insurance? (y/n)"
  insurance_sign_up = gets.chomp
    if insurance_sign_up = y
      insurance_sign_up = true
    elsif insurance_sign_up = n
      insurance_sign_up = false
    end

#write an if statement meeting these conditions and if meets none of the criteria results are inconclusive
#if age = true && (eats_garlic_bread = true || insurance_sign_up = true) then "probably not a vampire"
#if age = false && (eats_garlic_bread = false || insurance_sign_up = false) then probably a vampire
#if age = false && eats_garlic_bread = false && insurance_sign_up = false then "almost certainly a vampire"
#if name == "Drake Cula" || "Tu Fang" then "definitely a vampire"

