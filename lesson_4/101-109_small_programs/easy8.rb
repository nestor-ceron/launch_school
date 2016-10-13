# def sum_of_sums(arr)
#   sum = 0
#   arr2 = []
#   arr.each {|x| sum += arr2.reduce(:+) if arr2 << x}
#   p sum
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

##############################################################################################################

# puts "Enter a noun:"
# noun = gets.chomp
# puts "Enter a verb:"
# verb = gets.chomp
# puts "Enter an adjective:"
# adjective = gets.chomp
# puts "Enter an adverb:"
# adverb = gets.chomp

# sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
# sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
# sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

# puts [sentence_1, sentence_2, sentence_3].sample

# # Enter a noun: dog
# # Enter a verb: walk
# # Enter an adjective: blue
# # Enter an adverb: quickly

# # "Do you walk your blue dog quickly? That's hilarious!"



##############################################################################################################

# def substrings_at_start(str)
#   counter = 1
#   result =[]
#   str.size.times do |element|
#     result << str.chars[0..(str.size - counter)].join
#     counter += 1
#   end
#   p result.sort

# end

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

##############################################################################################################

# def substrings_at_start(str)
#   counter = 1
#   result =[]

#   str.size.times do |element|
#     result << str.chars[0..(str.size - counter)].join
#     counter += 1
#   end

#   result.sort
# end

# def substrings(str)
#   result = []
#   new_str = str

#   str.size.times do |element|
#     result << substrings_at_start(new_str)
#     new_str = new_str.slice(1..new_str.size)
#   end

#   result.flatten
  
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

##############################################################################################################

# def palindromes(str)
#   palindromes = substrings(str)
#   result = []
#   palindromes.each {|element| element.reverse == element && element.size > 1 ? result << element : next}
#   result

# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

##############################################################################################################

# def fizzbuzz(start, ending)

#   (start..ending).each do |element|
#     if element % 3 == 0 && element % 5 == 0
#       print "FizzBuzz "
#     elsif element % 5 == 0
#       print "Buzz, " 
#     elsif element % 3 == 0
#       print "Fizz, "
#     else
#       print "#{element}, "
#     end
#   end

# end

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

##############################################################################################################

# def repeater(str)
#   str.chars.map {|x| x*2}.join
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

##############################################################################################################
# def double_consonants(str)
#   p str.chars.map {|x| x =~ /[^aeiou\d\W]/i ? x*2 : x}.join
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

##############################################################################################################

# def reversed_number(digit)
#   digit.to_s.reverse.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # Note that zeros get dropped!
# p reversed_number(1) == 1

##############################################################################################################

# def center_of(str)
#   if str.size.odd?
#     str[(str.size / 2.0).ceil - 1]
#   else
#     str[(str.size / 2) - 1,2]
#   end
# end

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

