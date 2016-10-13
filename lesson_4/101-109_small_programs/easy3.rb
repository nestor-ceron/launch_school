# array = []
# puts "==> Enter the 1st number:"
# array << gets.chomp.to_i
# puts "==> Enter the 2nd number:"
# array << gets.chomp.to_i
# puts "==> Enter the 3rd number:"
# array << gets.chomp.to_i
# puts "==> Enter the 4th number:"
# array << gets.chomp.to_i
# puts "==> Enter the 5th number:"
# array << gets.chomp.to_i
# puts "==> Enter the last number:"
# last_number = gets.chomp.to_i

# if array.include?(last_number)
#   puts "The number #{last_number} appears in #{array}."
# else
#   puts "The number #{last_number} does not appear in #{array}."
# end

##############################################################################################################

# puts "==> Enter the first number:"
# num1 = gets.chomp.to_i
# puts "==> Enter the second number:"
# num2 = gets.chomp.to_i

# puts "==> #{num1} + #{num2} = #{num1+num2}"
# puts "==> #{num1} - #{num2} = #{num1-num2}"
# puts "==> #{num1} * #{num2} = #{num1*num2}"
# puts "==> #{num1} / #{num2} = #{num1/num2}"
# puts "==> #{num1} % #{num2} = #{num1%num2}"
# puts "==> #{num1} ** #{num2} = #{num1**num2}"

##############################################################################################################

# puts "Please write word or multiple words:"
# words = gets.chomp

# puts "There are #{words.delete(' ').chars.count} characters in \"#{words}\"."

##############################################################################################################

# def multiply(num1, num2)
#   result = num1 * num2
# end

# multiply(5, 3) == 15

##############################################################################################################

# def square(num)
#   num ** 2
# end

# p square(5) == 25
# p square(-8) == 64

##############################################################################################################

# def xor?(condition1, condition2)
#   (condition1 <=> condition2) == nil
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

##############################################################################################################

# def oddities(array)
#   array.map.with_index {|v, i| i.even? ? v : next}.compact
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

##############################################################################################################

# def palindrome?(str)
#   str.reverse == str
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

##############################################################################################################

# def real_palindrome?(str)
#   str2 = str.chars.keep_if {|x| x =~ /[0-9A-Za-z]/ }.join.downcase
#   # str.downcase.delete('^a-z0-9')
#   str2 == str2.reverse
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

##############################################################################################################

# def palindromic_number?(number)
#   number == number.to_s.reverse.to_i
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true

##############################################################################################################
##############################################################################################################