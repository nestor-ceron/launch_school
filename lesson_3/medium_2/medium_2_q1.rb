#medium_2_q1.rb

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def total_male_ages(hash)
  counter = 0
  hash.each do |key, value|
    if value["gender"] == "male"
      counter += value["age"]
    end
  end
  counter
end

p total_male_ages(munsters)

# or
# total_male_age = 0
# munsters.each do |name, details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end