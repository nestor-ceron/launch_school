# rock_paper_scissors.rb
VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts "=> #{message}"
end

def win?(first_player, second_player)
  (first_player == 'rock' && second_player == 'scissors') ||
    (first_player == 'paper' && second_player == 'rock') ||
    (first_player == 'scissors' && second_player == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif player == computer
    prompt("It's a tie!!")
  else
    prompt("You Lost!")
  end
end

loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().upcase().downcase!
    # Prevents user from entering uppercase choices
    # downcase on a non uppercase words will return nil, thus the upcase
    if VALID_CHOICES.include?(choice) == true
      break
    else
      prompt("#{choice} is not a valid option, please choose a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  Kernel.puts("You choose #{choice} and the computer choose #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to play again?(Y/N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing! Goodbye!")
