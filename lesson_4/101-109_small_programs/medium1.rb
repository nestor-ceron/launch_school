
# def rotate_array(arr)
#   # array[1..-1] + [array[0]]
#   arr.last(arr.size-1).concat(arr.first(1))
# end


# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

##############################################################################################################

# def rotate_rightmost_digits(digit, rightmost)
#   result = digit.to_s.chars.first(digit.to_s.size-rightmost) + rotate_array(digit.to_s.chars.last(rightmost))
#   result.join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915  
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

##############################################################################################################

# def rotate_digit(digit)
#   (digit.to_s.chars[1..-1] + digit.to_s.chars.first(1)).join.to_i
# end

# def max_rotation(digit)
#   mr = rotate_digit(digit)
#   1.upto(digit.to_s.size-2) do |rotation|
#     mr = rotate_rightmost_digits(mr, (digit.to_s.size)-rotation)
#   end
#   mr
# end


# # rotate_digit(734569)
# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

##############################################################################################################

# def toggle_light(light)
#   light[1] == 0 ? light[1] = 1 : light[1] = 0
#   light
# end

# def lights_on(num_of_lights)
#   lights = []
#   1.upto(num_of_lights) {|i| lights << [i,0]}

#   lights.each_with_index do |light, idx|
#     if idx+1 == 1
#       lights.select!{|light| toggle_light(light) }
#     else
#       lights.each {|light| ((light[0] % (idx+1)) == 0) ? toggle_light(light) : light }
#     end
#   end
#   lights_on = []
#   lights.map {|light| lights_on << light if light[1] == 1 }

#   puts "With #{num_of_lights} lights, #{lights_on.count} lights are left on: lights #{lights_on.map {|l| l[0] }.join(', ')}."
# end

# # toggle_light([87,0])
# # toggle_light([99,1])
# lights_on(1000)

##############################################################################################################

# def odd(n)
#   (2*n)+1
# end

# def diamond(n)
#   0.upto(n/2) {|x| puts ('*' * odd(x)).center(n)}
#   (n/2 - 1).downto(0) {|x| puts ('*' * odd(x)).center(n)}
#   puts ''
# end

# diamond(1)
# diamond(3)
# diamond(9)

##############################################################################################################

# def minilang(args)
#   stack = []
#   resgister = 0

#   args.split(' ').each do |value|
#     value = value.to_i if value.to_i.to_s == value
#     case value
#     when 'PRINT' then puts "#{resgister}"
#     when 'PUSH' then stack << resgister
#     when 'ADD' then resgister += stack.pop
#     when -10..10 then resgister = value
#     when 'SUB' then resgister -= stack.pop
#     when 'MULT' then resgister *= stack.pop
#     when 'DIV' then resgister /= stack.pop
#     when "MOD" then resgister %= stack.pop
#     when 'POP' then resgister = stack.pop
#     end
#   end
#   puts ''
# end


# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

##############################################################################################################

# NUMBERS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'} 

# def word_to_digit(sentence)
#   NUMBERS.each_pair {|key, value| sentence.gsub!(key, value) if sentence.include?(key)}
#   p sentence
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


##############################################################################################################

# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

##############################################################################################################

# def fibonacci(nth)
#   fi = (1 + Math.sqrt(5))/2
#   phi = (1 - Math.sqrt(5))/2
#   p ((fi**nth - phi**nth)/Math.sqrt(5))
# end

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   p last
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075 # 354224848179261915075
# # p fibonacci(100_001) # => 4202692702.....8285979669707537501


##############################################################################################################

# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   p last.to_s[-1].to_i
# end

# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4


##############################################################################################################



##############################################################################################################



##############################################################################################################