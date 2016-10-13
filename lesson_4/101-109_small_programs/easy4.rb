
# def short_long_short(str1, str2)
#   if str1.size > str2.size
#     str2 + str1 + str2
#   else
#     str1 + str2 + str1
#   end
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"


# def short_long_short(string1, string2)
#   arr = [string1, string2].sort_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end

##############################################################################################################

# def century(year)
#   year = year.to_f / 100
#   century = year.ceil % 10

#   if year.ceil.to_s.include?('11') || year.ceil.to_s.include?('12') || year.ceil.to_s.include?('13')
#     year.ceil.to_s + "th"
#   else
#     case century
#     when 1
#       year.ceil.to_s + "st"
#     when 2
#       year.ceil.to_s + "nd"
#     when 3
#       year.ceil.to_s + "rd"
#     else
#       year.ceil.to_s + "th"
#     end
#   end
# end


# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include? century % 100
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

##############################################################################################################

# def leap_year?(year)
#   ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
# end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

##############################################################################################################

# def leap_year?(year)
#   if year > 1752
#     ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
#   else
#     year % 4 == 0
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

##############################################################################################################

# def multisum(number)
#   sum = []
#   (1..number).each {|num| sum << num if (num % 3 == 0 || num % 5 == 0) }
#   sum.reduce(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

##############################################################################################################

# def running_total(array)
#   running_total = 0
#   running_total_array = []
#   array.each {|i| running_total_array << running_total += i}
#   running_total_array
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

##############################################################################################################

# def string_to_integer(str)
#   digits = {"0" => 0, "1" => 1, "2" =>2, "3" =>3, "4" =>4, "5" =>5, "6" =>6, "7" =>7, "8" =>8, "9" =>9}
#   array_of_nums = str.chars.map {|char| digits[char]}
#   value = 0 
#   array_of_nums.each {|num| value = value * 10 + num }
#   value
# end

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

##############################################################################################################
# require 'pry'
# def string_to_signed_integer(str)
#   digits = {"0" => 0, "1" => 1, "2" =>2, "3" =>3, "4" =>4, "5" =>5, "6" =>6, "7" =>7, "8" =>8, "9" =>9, "-" => -1, "+" => 0}
#   array_of_nums = str.chars.map {|char| digits[char]}
#   value = 0 
#   sign = 1
#   # binding.pry
#   array_of_nums.each {|num| num != -1 ? (value = value * 10 + num) : sign = -1 }
#   value * sign
# end

# p string_to_signed_integer('4321') #== 4321
# p string_to_signed_integer('-570') #== -570
# p string_to_signed_integer('+100') #== 100

##############################################################################################################

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

##############################################################################################################

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

##############################################################################################################


##############################################################################################################


##############################################################################################################
