# age = rand(20..200)

# puts "Teddy is #{age} years old!"

#####################################################################################################################
# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i
# puts 'Enter the width of the room in meters:'
# width = gets.chomp.to_i
# area = length * width
# puts "The area of the room is #{area} square meters (#{area*10.7639} square feet)."

#####################################################################################################################

# puts "What is the bill?"
# bill = gets.chomp.to_f
# puts "What is the tip percentage?"
# tip_percentage = gets.chomp.to_f

# tip = bill * (tip_percentage/100)
# total = bill + tip

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"

#####################################################################################################################

# puts "What is your age?"
# age = gets.chomp.to_i
# puts "At what age would you like to retire?"
# retire_age = gets.chomp.to_i

# current_year = Time.now.year
# year_until_retirement = retire_age - age
# retire_year = current_year + year_until_retirement

# puts "It's #{current_year}. You will retire in #{retire_year}."
# puts "You have only #{year_until_retirement} years of work to go!"
#####################################################################################################################

# puts "What is your name?"
# name = gets.chomp

# if name.include?('!')
#   puts "HELLO #{name.upcase.delete "!"}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

#####################################################################################################################

# (1..99).select {|x| x.odd? ? puts(x) : next}

#####################################################################################################################

# (1..99).select {|x| x.even? ? puts(x) : next}

#####################################################################################################################

# puts ">> Please enter an integer greater than 0:"
# ending_int = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# compute_choice = gets.chomp

# if compute_choice == 's'
#   sum = (1..ending_int).reduce(:+)
#   puts "The sum of the integers between 1 and #{ending_int} is #{sum}."
# elsif compute_choice == 'p'
#   product = (1..ending_int).reduce(:*)
#   puts "The product of the integers between 1 and #{ending_int} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end

##############################################################################################################




##############################################################################################################



