#easy_2_q3.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages = ages.each.reject{|k,v| v >= 100}
p ages
# or ages.keep_if { |_, age| age < 100 }