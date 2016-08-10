#easy_2_q8.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

p flintstones.rindex {|i| i.start_with?("Be")}
#or 
flintstones.index { |name| name[0, 2] == "Be" }