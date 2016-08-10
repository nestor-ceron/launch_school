#medium_1_q7.rb

LIMIT = 15

def fib(first_num, second_num)
  limit = 15
  while second_num < limit # or LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# How would you fix this so that it works?
# You can define limit within the method, or
# you can make limit a constant so the method
# can acess the global variable 