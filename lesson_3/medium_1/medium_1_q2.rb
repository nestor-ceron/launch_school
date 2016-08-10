#medium_1_q2.rb

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
frequency = {}

statement.each_char do |c|
  if frequency.has_key?(c) || c == " "
    next
  else 
    frequency[c] = statement.scan(c).count
  end
end 

puts frequency

# or
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end