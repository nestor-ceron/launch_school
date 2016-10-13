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