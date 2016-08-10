# easy_1_q3.rb

# replace the word 'important' with 'urgent'
  
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# advice = advice.split
# advice.each {|word| word == "important" ? word.replace("urgent") : next }
# advice = advice.join(" ")
p advice