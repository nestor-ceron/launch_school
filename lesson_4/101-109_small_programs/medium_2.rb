# def longest_sentence(file_input)
#   sentences_length = []

#   contents = File.open(file_input, "r"){ |file| file.read }

#   contents.split(/\.|\?|\!/).each {|line| sentences_length << line.split(' ').count}

#   puts "The longest sentence in the file is #{sentences_length.max} words long." 

# end

# longest_sentence('text.txt')

# longest_sentence("book.txt")

##############################################################################################################

# def block_word?(word)
#   blocks = [['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['F','S'],['J','W'],['H','U'],['V','I'],['L','Y'],['Z','M']]
#   block_word = nil
#   word.upcase.chars.each do |char|
#     if blocks.delete(blocks.assoc(char) || blocks.rassoc(char)) != nil
#        block_word = true
#     else
#       block_word = false
#       break
#     end
#   end
#   block_word
# end

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end


# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

##############################################################################################################

# def letter_percentages(str)
#   letter_percentages = {lowercase: 0, uppercase: 0, neither: 0}
#   letter_percentages[:lowercase] = (str.scan(/[a-z]/).count / str.size.to_f) * 100
#   letter_percentages[:uppercase] = (str.scan(/[A-Z]/).count / str.size.to_f) * 100
#   letter_percentages[:neither] = (str.scan(/[^A-Za-z]/).count / str.size.to_f) * 100
#   letter_percentages
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

##############################################################################################################

# def balanced?(str)
#   parens = []
#   values = []
#   str.chars.each { |char| parens << char if char == '(' || char == ')' }
#   # p parens
#   if parens.size.even?
#     parens.each do |value|
#       values << value
#       if values[-1] == '(' && values[-1] == values[-2] then next
#       elsif (values.size == 2 && values[0] != '(')
#         break
#       elsif values.size >= 2
#         values.delete_at(-1)
#         values.delete_at(-1)
#       end
#     end
#   else
#     values = parens
#   end
#   values.empty?
# end

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

##############################################################################################################

# def triangle(l1, l2,l3)
#   if l1 == l2 && l2 == l3 then :equilateral
#   elsif l1 == l2 || l1 == l3 then :isosceles
#   elsif l1 != l2 && l1 != l3 && l2 != l3 then :scalene
#   else return :invalid      
#   end
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

##############################################################################################################

# def triangle(a1, a2, a3)
#   angles = [a1,a2,a3]
#   if angles.reduce(:+) != 180 then :invalid  
#   elsif angles.join.scan('90').count == 1 then :right
#   elsif angles.max < 90 then :acute
#   elsif angles.max > 90 then :obtuse
#   else :invalid      
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

#   angles = [angle1, angle2, angle3]

#   case
#   when angles.reduce(:+) != 180, angles.include?(0)
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? { |angle| angle < 90 }
#     :acute
#   else
#     :obtuse
#   end


##############################################################################################################
# require 'Date'

# def friday_13th?(year)
#   Date.new(year).step(Date.new(year,-1,-1)).select{|d| d.mday == 13 && d.friday?}.count
# end

# p friday_13th?(2015) == 3
# p friday_13th?(1986) == 1

##############################################################################################################

# def appears_twice?(digit)
#   digit.to_s.chars {|c| return false if digit.to_s.scan(c).count > 1}
#   true
# end

# def featured(digit)
#   featured = digit + 1

#     until featured % 7 == 0 && appears_twice?(featured) && featured.odd? do
#       featured += 1
#       if featured > 9_876_543_210 
#         puts "There is no possible number that fulfills those requirements"
#         break
#       end
#     end

#   featured
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_999)
##############################################################################################################

# def bubble_sort!(array)
#   count = 1
#   array.each_with_index do |value, idx|
#     break if array[idx+1] == nil 
#     if value > array[idx+1] 
#       array[idx], array[idx+1] = array[idx+1], array[idx]
#     else
#       count += 1
#     end
#   end
#   bubble_sort!(array) if count != array.size
# end

# # def bubble_sort!(array)
# #   loop do
# #     swapped = false
# #     1.upto(array.size - 1) do |index|
# #       next if array[index - 1] <= array[index]
# #       array[index - 1], array[index] = array[index], array[index - 1]
# #       swapped = true
# #     end

# #     break unless swapped
# #   end
# #   nil
# # end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

##############################################################################################################
# def sum_square_difference(digit)
#   (1..digit).reduce(:+)**2 - (1..digit).inject(0) { |product, n| n**2 + product}
# end

# p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

##############################################################################################################



##############################################################################################################