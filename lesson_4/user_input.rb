# user_input.rb

####################################### 

# puts ">> Type anything you want:"

# user_input = gets.chomp

# puts user_input

####################################### 

# puts ">> What is your age in years?"

# age = gets.chomp.to_i

# puts "You are #{age*12} months old."

####################################### 

# loop do
#   puts ">> Do you want me to print something? (y/n)"

#   input = gets.chomp

#   if input.downcase == 'y'
#     puts "something"
#     break
#   elsif input.downcase == 'n'
#     break
#   else
#     puts ">> Invalid input! Please enter y or n"
#   end

# end
####################################### 

# lines = 0

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   lines = gets.chomp.to_i
#   break if lines >= 3
#   puts "That's not enough lines."
# end

# lines.times {puts "Launch School is the best!"}

####################################### 

# PASSWORD = "NesThor"
# USERNAME = "Nestor"

# loop do
#   puts ">> Please enter user name:"
#   user_name = gets.chomp
#   puts ">> Please enter your password:"
#   answer = gets.chomp
#   break if answer == PASSWORD && user_name == USERNAME
#   puts ">> Authorization failed!"
# end

# puts "Welcome!"

####################################### 

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# num1 = nil
# num2 = nil

# loop do
#   puts ">> Please enter the numerator:"
#   num1 = gets.chomp
#   break if valid_number?(num1)
#   puts ">> Invalid input. Only integers are allowed."
# end

# loop do
#   puts ">> Please enter the denominator:"
#   num2 = gets.chomp
#   break if valid_number?(num2) && num2.to_i != 0
#   if num2.to_i == 0
#     puts ">> Invalid input. A denominator of 0 is not allowed."
#   else
#     puts ">> Invalid input. Only integers are allowed."
#   end
# end

# puts ">> #{num1} / #{num2} is #{num1.to_i / num2.to_i}"


####################################### 

# loop do

#   lines = 0

#   loop do
#     puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
#     lines = gets.chomp
#     break if lines.to_i >= 3 || lines.downcase == 'q'
#     puts "That's not enough lines."
#   end

#   lines.to_i.times {puts "Launch School is the best!"}
#   break if lines.downcase == 'q'

# end

####################################### 

# require 'Pry'

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
#   # binding.pry
# end

# def opposites?(str1, str2)
#   str1.to_i * str2.to_i < 0
#   # (str1.to_i > 0 && str2.to_i < 0) || (str2.to_i > 0 && str1.to_i < 0)
# end

# num1 = nil
# num2 = nil

# loop do
#   puts ">> Please enter a positve or negative interger:"
#   num1 = gets.chomp
#   puts ">> Please enter a positve or negative interger:"
#   num2 = gets.chomp
  
#   if (valid_number?(num1) && valid_number?(num2)) == false
#     puts ">> Invalid input. Only non-zero integers are allowed."
#     next
#   end

#   break if opposites?(num1, num2)
#   puts ">> Sorry. One interger must be positve, one must be negative."
#   puts ">> Please start over."
# end

# puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
