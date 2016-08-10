#medium_1_q6.rb

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# Is there a difference between the two, 
# other than what operator she chose to use to add an element to the buffer?
# Yes, the difference being that the first method mutates the array 
# passed in, while the 2nd method returns a new array. 