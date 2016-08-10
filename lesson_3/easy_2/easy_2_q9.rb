#easy_2_q9.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Using array#map!, shorten each of these names to just 3 characters:

p flintstones.map! {|name| name.slice(0,3)}

# or
# flintstones.map! do |name|
#   name[0, 3]
# end