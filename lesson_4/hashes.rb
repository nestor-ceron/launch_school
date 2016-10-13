
# car = {'type' => 'sedan', 'color' => 'blue', 'mileage' => 80_000 }

# #######################################

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000
# }

# # car.store(:year, 2003)
# car[:year] = 2003
# p car

#######################################

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# p car 

#######################################

# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]

#######################################

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |key, value|
#   puts "A #{key} number is #{value}."
# end

#######################################

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# half_numbers = []

# numbers.each_value {|v| half_numbers.push(v/2)}
# # numbers.each_value do |value|
# #   half_numbers << value / 2
# # end

# p half_numbers

# half_numbers = numbers.map do |key, value|
#                  value / 2
#                end

# p half_numbers

#######################################

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select {|k,v| v if v < 25}
# p low_numbers

#######################################

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers

#######################################
# vehicles = {
# car: {type: 'sedan', color: 'blue', year:'2003'},
# truck: {type:'pickup', color:'red', year: '1998'}
# }

# p vehicles
#######################################

# car = {
#   type:  'sedan',
#   color: 'blue',
#   year:  2003
# }

# p car.to_a

#######################################



#######################################



#######################################



#######################################
