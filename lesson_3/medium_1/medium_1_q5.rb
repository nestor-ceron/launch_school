#medium_1_q5.rb

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(-36)
p factors(36)

# Bonus 1
# What is the purpose of the number % dividend == 0 ?
# The purpose of this line of code is to check whether the number
# evenly divides into the divided and if it does it will be 
# inserted into the array

# Bonus 2
# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# This is the return value of the method. 