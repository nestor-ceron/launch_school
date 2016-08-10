#medium_1_q8.rb

string = "x men: the last stand"

def titlelize(message)
  message = message.split.each {|word| word.capitalize!}.join(' ')
end

p titlelize(string)

