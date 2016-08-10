#easy_3_q5.rb

statement = "The Flintstones Rock!"

# Write a one-liner to count the number of lower-case 't' characters in the following string:

p statement.each_char.count {|c| (c == 't')}
# or 
# p statement.scan('t').count