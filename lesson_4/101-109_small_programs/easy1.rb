# def repeat(str, iterations)
#   iterations.times {puts str}
# end

# repeat('Hello', 3)

####################################### 

# def is_odd?(number)
#   (number % 2) == 1
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(7.1)  # => false
# puts is_odd?(-5.0) # => true

####################################### 

# def digit_list(digits)
#   digits.to_s.chars.map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]


####################################### 

# def count_occurrences(array)
#   array.uniq.map {|x| puts "#{x} => #{array.count(x)}"}
# end

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

####################################### 

# def reverse_sentence(str)
#   str.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

####################################### 

# def reverse_words(str)
#   str.split.map {|word| word.length > 4 ? word.reverse : word}.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

####################################### 

# def stringy(number)
#   str = []
#   number.times {|x| x.odd? ? str << 0 : str << 1}
#   str.join
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

####################################### 

# def average(array)
#   array.reduce(:+) / array.count
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

####################################### 

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

#######################################

# def calculate_bonus(salary, boolean)
#   boolean ? salary /2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

#######################################

# age = rand(20..200)

# puts "Teddy is #{age} years old!"

#######################################

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_i
area = length * width
puts "The area of the room is #{area} square meters (#{area*10.7639} square feet)."

#######################################
