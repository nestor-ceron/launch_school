# numbers = *(0..99)
# count = 0

# while count < 5
#   puts numbers.sample
#   count += 1
# end

#######################################

# count = 0

# until count == 11
#   puts count
#   count += 1
# end

#######################################

# numbers = [7, 9, 13, 25, 18]

# until numbers.size == 0
#   p numbers.pop
# end

#######################################

# for i in 1..100
#   puts i if i.odd?
# end

#######################################

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# # friends.map {|friend| puts "Hello, #{friend}!"}

# for friend in friends
#   puts "Hello, #{friend}!"
# end

#######################################

# count = 1

# loop do
#   if count.odd?
#     puts "#{count} is odd!"
#   else
#     puts "#{count} is even!"
#   end
#   count += 1
# break if count > 5
# end

#######################################

# loop do
#   number = rand(100)
#   puts number
#   break if number >= 0 && number <= 10
# end

#######################################

# loop do
#   if process_the_loop = [true, false].sample
#     puts "The loop was processed!"
#     break
#   else
#     puts "The loop wasn't processed!"
#   end
# end

# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

#######################################

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

#######################################

# numbers = []

# loop do
#   puts 'Enter any number:'
#   numbers << gets.chomp.to_i
#   break if numbers.count >= 5
# end
# puts numbers

#######################################

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# until names.size == 0
#   puts names.pop
# end

####################################### 

# 5.times do |index|
#   puts index
#   break if index == 2
# end

####################################### 

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

####################################### 

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   next unless number_a == 5 || number_b == 5

#   puts '5 was reached!'

#   break
# end

####################################### 

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

####################################### 

def reverse_string(str)
  reversed = []
  arr_of_chars = str.chars
  str.size.times {reversed << arr_of_chars.pop}
  reversed.join
end

p reverse_string("Hello World")

