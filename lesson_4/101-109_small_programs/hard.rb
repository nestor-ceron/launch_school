
# ADJECTIVES = %w(quick lazy sleepy ugly).freeze
# NOUNS      = %w(fox dog head leg cat tail).freeze
# VERBS      = %w(spins bites licks hurdles).freeze
# ADVERBS    = %w(easily lazily noisly excitedly).freeze

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      NOUNS.sample,
#                       verb:      VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       adverb:    ADVERBS.sample)
#   end
# end

##############################################################################################################

# def star(star_size)
#   0.upto((star_size/2)-1) {|i| puts ' '*i + '*' + ' '*((star_size/2)-(i+1)) + '*' + ' '*((star_size/2)-(i+1)) + '*'}
#   puts '*' * star_size
#   ((star_size/2)-1).downto(0) {|i| puts ' '*i + '*' + ' '*((star_size/2)-(i+1)) + '*' + ' '*((star_size/2)-(i+1)) + '*'} 
# end

# star(7)
# puts ' '
# star(9)

##############################################################################################################

# def transpose(matrix)
#   new_matrix = [[],[],[]]
#   0.upto(matrix.size-1) do |i| 
#     new_matrix[0] << matrix[i][0]
#     new_matrix[1] << matrix[i][1]
#     new_matrix[2] << matrix[i][2]
#   end
#   p new_matrix
# end

# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

##############################################################################################################

# def transpose(matrix)
#   result = []
#   (matrix[0].size).times do |column_index|
#     new_row = (0..matrix.size-1).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   p result
# end

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

##############################################################################################################

# def rotate90(matrix)
#   result = []
#   matrix.first.count.times do |column_index|
#   row = []
#     (matrix.size-1).downto(0) do |row_index|
#       row << matrix[row_index][column_index]
#     end
#   result << row
#   end
#   p result
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

##############################################################################################################

# def permutations(array)
#   return [array] if array.size == 1

#   result = []
#   array.each_with_index do |element, index|
#     sub_array = array[0...index] + array[(index + 1)..-1]
#     sub_permutations = permutations(sub_array)
#     sub_permutations.each do |permutation|
#       result << [element] + permutation
#     end
#   end

#   result
# end

# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
# p permutations([1, 2, 3, 4])

##############################################################################################################

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])


# ##############################################################################################################

# def merge(arr1, arr2)
#   merged = []
#   a1_counter = 0
#   a2_counter = 0 
#   loop do
#     if arr1.empty? == true
#       merged = arr2
#     elsif arr2.empty?
#       merged = arr1
#     elsif arr1[a1_counter] == nil
#         merged << arr2[a2_counter]
#     elsif arr2[a2_counter] == nil
#         merged << arr1[a1_counter]
#     elsif arr1[a1_counter] < arr2[a2_counter]
#       merged << arr1[a1_counter]
#       a1_counter += 1
#     elsif arr2[a2_counter] < arr1[a1_counter]
#       merged << arr2[a2_counter]
#       a2_counter += 1  
#     end
#     break if merged.size == arr1.size + arr2.size  
#   end
#   p merged
# end

# def merge(array1, array2)
#   index2 = 0
#   result = []

#   array1.each do |value|
#     while index2 < array2.size && array2[index2] <= value
#       result << array2[index2]
#       index2 += 1
#     end
#     result << value
#   end

#   result.concat(array2[index2..-1])
# end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

##############################################################################################################

# def merge_sort(array)
#   return array if array.size == 1

#   first_half = array[0...array.size / 2]
#   second_half = array[array.size / 2...array.size]
  
#   first_half = merge_sort(first_half)
#   second_half = merge_sort(second_half)

#   merge(first_half, second_half)
  
# end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

##############################################################################################################

# def egyptian(rational)
#   rational_f = rational.to_f
#   egyptian_d = []
#   div = 0.0

#   (1..100000).each do |i| 
#     if (div + 1.0/i) > rational_f
#       next
#     elsif div == rational_f
#       break
#     else
#       div += 1.0 / i
#       egyptian_d.push(i)
#     end
#   end
#   egyptian_d
# end

# def unegyptian(array)
#   p array.map{ |e| Rational(1,e) }.reduce(:+)
# end

# def egyptian(target_value)
#   denominators = []
#   unit_denominator = 1
#   until target_value == 0
#     unit_fraction = Rational(1, unit_denominator)
#     if unit_fraction <= target_value
#       target_value -= unit_fraction
#       denominators << unit_denominator
#     end

#     unit_denominator += 1
#   end

#   denominators
# end

# def unegyptian(denominators)
#   denominators.inject(Rational(0)) do |accum, denominator|
#     accum + Rational(1, denominator)
#   end
# end

# p egyptian(Rational(2, 1)) #== [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p egyptian(Rational(127, 130))

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)




