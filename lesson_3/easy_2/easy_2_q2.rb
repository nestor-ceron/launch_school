#easy_2_q2.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from our current Munster family hash:

# family_age = 0
# ages.each {|key, value| family_age += value}
# p family_age
p ages.values.reduce(:+)
