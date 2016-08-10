#medium_1_q1.rb
string = "The Flintstones Rock!"

for i in 1..10
   p string.insert(0," ")
end

# or
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }