# medium_3_q3.rb

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga" # array is passed by value and mutated
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # altered string is only withing the memory of the method
puts "My array looks like this now: #{my_array}"