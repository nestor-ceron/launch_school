#calculator.rb

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num.to_i() != 0
    return true
  else
    return false
  end
end

operation = ""
num1 = 0
num2 = 0

def add()
  Kernel.puts("Please enter the 2 numbers you wish to add.")
  num1 = Kernel.gets().chomp()
  num2 = Kernel.gets().chomp()

  if (valid_number?(num1) && valid_number?(num2)) == false
    prompt("Hmm... Seems like your numbers are not valid. Try again.")
    return
  end

  answer = num1.to_i() + num2.to_i()
  puts "Your calculated answer is #{answer}"
end

def subtract()
  Kernel.puts("Please enter the 2 numbers you wish to subtract.")
  num1 = Kernel.gets().chomp()
  num2 = Kernel.gets().chomp()

  if (valid_number?(num1) && valid_number?(num2)) == false
    prompt("Hmm... Seems like your numbers are not valid. Try again.")
    return
  end

  answer = num1.to_i() - num2.to_i()
  puts "Your calculated answer is #{answer}"
end

def divide(num1, num2)
  Kernel.puts("Please enter the 2 numbers you wish to divide.")
  num1 = Kernel.gets().chomp()
  num2 = Kernel.gets().chomp()

  if (valid_number?(num1) && valid_number?(num2)) == false
    prompt("Hmm... Seems like your numbers are not valid. Try again.")
    return
  end

  answer = num1.to_f() / num2.to_f()
  puts "Your calculated answer is #{answer}"
end

def multiply(num1, num2)
  Kernel.puts("Please enter the 2 numbers you wish to multiply.")
  num1 = Kernel.gets().chomp()
  num2 = Kernel.gets().chomp()

  if (valid_number?(num1) && valid_number?(num2)) == false
    prompt("Hmm... Seems like your numbers are not valid. Try again.")
    return
  end

  answer = num1.to_i() * num2.to_i()
  puts "Your calculated answer is #{answer}"
end

loop do
  prompt("Please enter what type of operation you would like to perform: add, subtract, multiply or divide.")
  operation = Kernel.gets().chomp()

  case operation
  when "add"
    add()
    break
  when "subtract"
    subtract()
    break
  when "multiply"
    multiply()
    break
  when "divide"
    divide()
    break
  else
    Kernel.puts("#{operation} is not a valid option.")
  end
end
