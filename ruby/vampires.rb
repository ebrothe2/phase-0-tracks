def get_employee_allergies
  puts "Do you have any allergies?"
  allergies = gets.chomp
  until allergies == "sunshine" || allergies == "done"
   puts "Do you have any other allergies?"
    allergies = gets.chomp
  end
end

def decide_if_new_employee_is_vampire
  puts "What is your name?"
    name = gets.chomp
  puts "How old are you?"
    age = gets.chomp.to_i
  puts "What year were you born?"
    year_born = gets.chomp.to_i
    current_year = 2016
        if (current_year - year_born) == age
          age = true
          else
          age = false
          end


  puts "Would you like some garlic bread? (y/n)"
    eats_garlic_bread = gets.chomp
    if eats_garlic_bread == "y"
      eats_garlic_bread = true
    elsif eats_garlic_bread == "n"
      eats_garlic_bread = false
    end

  puts "Would you like to enroll for Health Insurance? (y/n)"
    insurance_sign_up = gets.chomp
      if insurance_sign_up == "y"
        insurance_sign_up = true
      elsif insurance_sign_up == "n"
        insurance_sign_up = false
      end

  #write an if statement meeting these conditions and if meets none of the criteria results are inconclusive
  #if age == true && (eats_garlic_bread == true || insurance_sign_up = true) then "probably not a vampire"
  #if age = false && (eats_garlic_bread = false || insurance_sign_up = false) then probably a vampire
  #if age = false && eats_garlic_bread = false && insurance_sign_up = false then "almost certainly a vampire"
  #if name == "Drake Cula" || "Tu Fang" then "definitely a vampire"

    if (name == "drake cula") || (name == "Tu Fang")
      puts "Definitely a vampire"
    elsif !age && !eats_garlic_bread && !insurance_sign_up
      puts "almost certainly a vampire"
    elsif !age && (!eats_garlic_bread || !insurance_sign_up)
      puts "Probably a vampire"
    elsif age && (eats_garlic_bread || insurance_sign_up)
      puts "probably not a vampire"
    else
      puts "results inconclusive"
    end

end
#decide_if_new_employee_is_vampire

puts "How many new employees need to be surveyed?"
  new_employees_number = gets.chomp.to_i

counter = 0

until counter == new_employees_number
  decide_if_new_employee_is_vampire
  counter += 1
end

