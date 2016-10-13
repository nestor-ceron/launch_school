
# def greetings(name, job)
#   puts "Hello, #{name.join(' ')}! Nice to have a #{job[:title]} #{job[:occupation]} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # => Hello, John Q Doe! Nice to have a Master Plumber around.

##############################################################################################################

# def twice(digit)
#   first_half = digit.to_s.slice(0..(digit.to_s.size/2 -1))
#   second_half = digit.to_s.slice((digit.to_s.size/2)..(digit.to_s.size-1))
#   if digit.to_s.size.even? && first_half == second_half
#     digit
#   else
#     digit * 2
#   end
# end


# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

##############################################################################################################

# def negative(digit)
#   digit > 0 ? -digit : digit
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0 

##############################################################################################################

# def sequence(digit)
#   # array = []
#   # 1.upto(digit) {|element| array << element}
#   # array
#   (1..digit).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

##############################################################################################################

# def uppercase?(str)
#   str == str.upcase
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

##############################################################################################################

# def word_lengths(str)
#   str.split(' ').map {|e| "#{e} #{e.length}"}
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

##############################################################################################################

# def swap_name(str)
#   p str.split(' ').reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

##############################################################################################################

# def sequence(num1, num2)
#   # array = []
#   # num1.times {|i| array << (i+1) * num2}
#   # array
#   p (1..num1).map {|i| i*num2}
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

##############################################################################################################

# def get_grade(score1, score2, score3)
#   score = (score1 + score2 + score3) / 3
#   case score
#   when 90..100 then'A'
#   when 80..89 then 'B'
#   when 70..79 then 'C'
#   when 60..69 then 'D'
#   else             'F'
#   end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

##############################################################################################################

# def buy_fruit(arr)
#   # g_list =[]
#   # arr.each {|fruit| fruit[1].times{g_list << fruit[0]}}
#   # p g_list
#   p arr.map {|fruit| [fruit[0]] * fruit[1]}.flatten
#   # list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

##############################################################################################################

