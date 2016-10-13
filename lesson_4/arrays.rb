
# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = nil

# pets.select {|pet| my_pet = pet if pet == 'fish'}

# puts "I have a pet #{my_pet}!"

#######################################

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = []

# pets.select {|pet| my_pets << pet if pet == 'fish' || pet == 'lizard'}

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#######################################

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# my_pets.pop

# puts "I have a pet #{my_pets[0]}!"

#######################################
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# my_pets.pop
# my_pets.push(pets[1])

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#######################################

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each {|color| puts "I'm the color #{color}!"}

#######################################

# numbers = [1, 2, 3, 4, 5]

# doubled_numbers = numbers.map {|number| number*2 }

# p doubled_numbers

#######################################

# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = []
# numbers.select {|number| divisible_by_three << number if number % 3 == 0}

# p divisible_by_three
#######################################

# ['Dave', 7, 'Miranda', 3, 'Jason', 11]
# [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

#######################################

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# flat_favorites = favorites.flatten
# p flat_favorites

#######################################

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# puts array1 == array2

#######################################



