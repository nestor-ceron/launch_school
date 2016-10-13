
# def ascii_value(str)
#   sum = 0
#   str.each_char {|c| sum += c.ord}
#   sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

##############################################################################################################

# HOUR_IN_DAY = 24
# MIN_IN_HOUR = 60

# def time_of_day(int) 
#   if (int.abs / 60) >= 24
#     hour, min = int.divmod(MIN_IN_HOUR)
#     hour2 = hour % 24
#     p format('%02d:%02d', hour2, min)
#   elsif int == 0 || int > 0
#     hour, min = int.divmod(MIN_IN_HOUR)
#     p format('%02d:%02d', hour, min)
#   elsif int < 0
#     hour, min = int.divmod(MIN_IN_HOUR)
#     hour2 = HOUR_IN_DAY + hour
#     p str = "%02d:%02d" % [hour2, min]
#   end
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
# p time_of_day(1440) == "00:00"


##############################################################################################################
# HOUR_IN_DAY = 24
# MIN_IN_HOUR = 60
# MIN_A_DAY = HOUR_IN_DAY * MIN_IN_HOUR

# def after_midnight(time)
#   hours_mins = time.split(':').map(&:to_i)
#   if hours_mins.first != 24
#     total_mins = (hours_mins.first * 60) + hours_mins.last
#   else
#     total_mins = (hours_mins.first * 0) + hours_mins.last
#   end
# end

# def before_midnight(time)
#   hours_mins = time.split(':').map(&:to_i)
#   if hours_mins.first != 24 && hours_mins.first != 0
#     btotal_mins = MIN_A_DAY - ((hours_mins.first * 60) + hours_mins.last)
#   else
#     total_mins = (hours_mins.first * 0) + hours_mins.last
#   end
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0

# # HOURS_PER_DAY = 24
# # MINUTES_PER_HOUR = 60
# # MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# # def after_midnight(time_str)
# #   hours, minutes = time_str.split(':').map(&:to_i)
# #   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# # end

# # def before_midnight(time_str)
# #   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
# #   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
# #   delta_minutes
# # end

##############################################################################################################

# def swap(str)
#   str.split(' ').each {|word| word.size >= 2 ? word = word.insert(0, word.slice!(-1)).insert(-1, word.slice!(1)) : word = word.reverse}.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'
##############################################################################################################
# def cleanup(str)
#   p str = str.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# cleanup("---what's my +*& line?") == ' what s my line '
##############################################################################################################

# def word_sizes(str)
#   frequency = {}
#   str.split(' ').each do |word|
#     if frequency.has_key?(word.size)
#       next
#     else 
#       frequency[word.size] = str.split(' ').map {|x| x.size}.join.scan(word.size.to_s).count
#     end
#   end
#   frequency
# end

# # def word_sizes(words_string)
# #   counts = Hash.new(0)
# #   words_string.split.each do |word|
# #     counts[word.size] += 1
# #   end
# #   counts
# # end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

##############################################################################################################

# def word_sizes(str)
#   counts = Hash.new(0)
#   str.split.each do |word|
#     word.gsub!(/[^a-z]/i, '') 
#     # clean_word = word.delete('^A-Za-z')
#     counts[word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}


##############################################################################################################
# # NUMBERS = [[0,"zero"], [1,"one"], [2,"two"], [3,"three"], [4,"four"], [5,"five"], [6,"six"], [7,"seven"], [8,"eight"], [9,"nine"], [10,"ten"], [11,"eleven"], [12,"twelve"], [13,"thirteen"], [14,"fourteen"], [15,"fifteen"], [16,"sixteen"], [17,"seventeen"], [18,"eighteen"], [19,"nineteen"]]
# N = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}
# def alphabetic_number_sort(array)
#   sorted = []
#   sorted = array.map {|e| N[e]}.sort
#   p sorted.map {|e| N.key(e)}
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

##############################################################################################################

# def crunch(str)
#   p str.squeeze
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

##############################################################################################################

# def print_in_box(str)

#   puts "+-" + '-'*str.size + "-+"
#   puts "| " + ' '*str.size + " |"
#   puts "| #{str} |"
#   puts "| " + ' '*str.size + " |"
#   puts "+-" + '-'*str.size + "-+"

# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

##############################################################################################################



##############################################################################################################



##############################################################################################################