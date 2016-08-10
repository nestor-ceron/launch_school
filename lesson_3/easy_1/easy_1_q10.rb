#easy_1_q10.rb

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones.collect!.with_index {|v,i| i = [v,i]}
flintstones = flintstones.to_h
p flintstones

#  or
#  flintstones_hash = {}
#   flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end