#easy_2_q10.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:

p flintstones.map! {|name| name.slice(0,3)}