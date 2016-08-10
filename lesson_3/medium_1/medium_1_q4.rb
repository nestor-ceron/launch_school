#medium_1_q4.rb

# What happens when we modify an array while we are iterating over it? What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# Running this code will cause the array to be altered while iterating through. 
# The code should remove 1 & 2 but instead removes 1 & 3 becasue the 1st time around
# it removes the value 1 becasue it is the first value of the array. It then removes
# 3 because now the new array has three elements [2,3,4], but the loop thinks it
# already iterated through the first element 2, so it continues to 3. 3 gets removed
# and there are only 2 elements in the array and now the loop thinks its done because
# it has iterated over 2 elements which is the length of the new array and not the old.

# What would be outputed by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# Running this code will also cause the array to be altered while iterating through. 
# The code should remove 4 and 3 and leave [1,2] for numbers. Same logic as 1st loop