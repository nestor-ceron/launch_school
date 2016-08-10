#easy_1_q9.rb

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#flintstones = flintstones.to_a.delete_if {|a| a != ["Barney", 2]}
#p flintstones.flatten!

#or 
p flintstones.assoc("Barney")
