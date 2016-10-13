##############################################################################################################

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

##############################################################################################################

# def remove_vowels(arr)
#   p arr.map {|e| e.delete('aeiouAEIOU')}
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

##############################################################################################################
# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# def find_fibonacci_index_by_length(int)
#   counter = 0
#   loop do
#     counter += 1
#     break if fibonacci(counter).to_s.size == int
#   end
#   p counter
# end

# p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

##############################################################################################################

# def list(arr)
#   a = []
#   counter = 0
#   arr.size.times do
#     counter -= 1
#     a << arr.at(counter)
#   end
#   p a
# end

# a = [1,2,3,4]
# list(a)
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!([]) # => []
# list == []


##############################################################################################################

# def reverse(arr)
#   a = []
#   counter = 0
#   arr.size.times do # or reverse_each in Enumerable
#     counter -= 1
#     a << arr.at(counter)
#   end
#   p a
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []

##############################################################################################################

# def merge(arr, arr2)
#   p arr | arr2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

##############################################################################################################

# def halvsies(arr)
#   a =[]
#   b =[]
#   arr.each_with_index do |element, index|
#     if index < (arr.size / 2)
#       a << element
#     elsif index >= (arr.size / 2) && (arr.size % 2) == 0
#       b << element
#     elsif index.even? && (arr.size / 2) == index
#       a << element
#     elsif index >= (arr.size / 2)
#       b << element 
#     end
#   end
#   p [a,b]
# end

#   # first_half = array.slice(0, (array.size / 2.0).ceil)
#   # second_half = array.slice(first_half.size, array.size - first_half.size)
#   # [first_half, second_half]


# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

##############################################################################################################

# def find_dup(arr)
#   p arr.find { |e| arr.count(e) == 2 }
# end

# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

##############################################################################################################

# def include?(arr, element)
#   arr.each do |e|
#     return true if e == element
#   end
#   false
# end

# def include?(array, value)
#   !!array.find_index(value) # !! forces whatever you have into a boolean 
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

##############################################################################################################

# def triangle(postive_number)
#   counter = 0
#   while postive_number > counter
#     counter += 1
#     str = "*" * counter
#     puts str.rjust(postive_number)
#   end
# end

# triangle(5)
# triangle(9)

##############################################################################################################

# def interleave(arr1, arr2)
#   final_arr = []

#   arr1.each_with_index do |element, index| 
#     final_arr << arr1[index] << arr2[index]
#   end

#   p final_arr
# end

# def interleave(arr1, arr2)
#  p arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


##############################################################################################################

# def letter_case_count(str)
#   result = {}
#   result[:lowercase] = str.scan(/[a-z]/).count
#   result[:uppercase] = str.scan(/[A-Z]/).count
#   result[:neither] = str.scan(/[^a-z]/i).count
#   p result
# end


# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


##############################################################################################################

# def word_cap(str)
#   str.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

##############################################################################################################

# def swapcase(str)
#   p str.chars.each{|x| x =~ /[a-z]/ ? x.upcase! : x.downcase!}.join # non alpha chars returns nil, why?
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

##############################################################################################################

# def staggered_case(str)
#   result = str.chars
#   p result.each_with_index {|element, index| index.even? ? element.upcase! : element.downcase!}.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

##############################################################################################################
# require 'Pry'

# def staggered_case(str)
#   result = str.chars
#   result.each_with_index do |element, index|
#     if index.even?
#       # binding.pry
#       element.upcase!
#     else
#       # binding.pry
#       element.downcase!
#     end
#   end
#   result.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

##############################################################################################################

# def staggered_case(str)
#   need_upcase = true
#   result = []

#   str.chars.each_with_index do |element, index|
#     if need_upcase && element =~ /[a-z]/i
#       result << element.upcase
#       need_upcase = false
#     elsif !need_upcase && element =~ /[a-z]/i
#       result << element.downcase
#       need_upcase = true
#     else
#       result << element
#     end
#   end
#   p result.join
# end

# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

##############################################################################################################

# def show_multiplicative_average(arr)
#   result = arr.reduce(:*)/arr.size.to_f

#   # puts "The result is #{format("%.3f", result)}" 
#   puts "The result is #{result.round(3)}" 
# end

# show_multiplicative_average([3, 5])
# # The result is 7.500

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

##############################################################################################################

# def multiply_list(arr1, arr2)
#   arr1.map.with_index { |element, index| element * arr2[index] }
#   # arr1.zip(arr2).map {|x| x.first * x.last}
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

##############################################################################################################

# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map{|x| x.first * x.last}.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

##############################################################################################################

# def penultimate(str)
#   str.split.at(-2)
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

##############################################################################################################