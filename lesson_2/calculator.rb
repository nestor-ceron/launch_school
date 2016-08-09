# calculator.rb
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE) # make sure the "messages" method is declared above this line
  Kernel.puts("=> #{message}")
end

def valid_operation?(operation)
  case operation
  when "add"
    return true
  when "subtract"
    return true
  when "multiply"
    return true
  when "divide"
    return true
  else
    puts("#{operation} is not a valid option.")
  end
end

def valid_number?(number)
  if number.to_i.to_s == number || number.to_f.to_s == number
    return true
  else
    return false
  end
end

answer = ""

prompt('welcome')
name = gets().chomp()

while name.empty?() != false
  if name.empty?()
    prompt('valid_name')
    name = gets().chomp()
  end
end

puts("Hello #{name}!")

loop do
  num1 = nil
  num2 = nil
  prompt('operation_choice')
  operation = gets().chomp().downcase()

  redo unless valid_operation?(operation) == true

  loop do
    prompt('number_input')
    num1 = gets().chomp()
    num2 = gets().chomp()
    break if (valid_number?(num1) && valid_number?(num2)) == true
  end

    if (valid_number?(num1) && valid_number?(num2)) == true
      case operation
      when "add"
        answer = num1.to_f() + num2.to_f()
        p "Your calculated answer is #{answer}"
      when "subtract"
        answer = num1.to_f() - num2.to_f()
        p "Your calculated answer is #{answer}"
      when "multiply"
        answer = num1.to_f() * num2.to_f()
        p "Your calculated answer is #{answer}"
      when "divide"
        answer = num1.to_f() / num2.to_f()
        p "Your calculated answer is #{answer}"
      else
        puts("#{operation} is not a valid option.")
        break
      end
    else
      prompt('valid_numbers')
    end

  prompt('run_again')
  answer = gets().chomp().upcase!().start_with?('Y')
  break if answer != true
end

prompt('goodbye')
