#easy_3_q4.rb

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

advice.slice!(0, advice.index("house"))

p advice

