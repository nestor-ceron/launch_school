
def meal
  return 'Breakfast'
end

puts meal

#######################################

def meal
  'Evening'
end

puts meal

#######################################

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal # puts Breakfast

#######################################

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

#######################################

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

#######################################

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal # puts Breakfast

#######################################

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

#######################################

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

#######################################

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

#######################################

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

#######################################
#######################################
#######################################
#######################################