# mortgage_calc.rb
require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_messages.yml')

def prompt(message)
  puts "=> #{MESSAGES[message]}"
end

prompt('welcome')

loop do
  prompt('loan')
  loan_amount = gets.chomp.to_f
  prompt('months')
  months = gets.chomp.to_f
  prompt('rate')
  annual_rate = gets.chomp.to_f / 100
  monthly_payment = (loan_amount * annual_rate / 12) / (1 - (1 + (annual_rate / 12))**-months)
  if monthly_payment.nan? == true
    prompt('not_a_number')
    next
  end
  puts "Your monthly payment is #{monthly_payment.round(2)}"
  prompt('run_again')
  answer = gets.chomp.downcase.start_with?('y')
  break if answer == false
end

prompt('goodbye')
