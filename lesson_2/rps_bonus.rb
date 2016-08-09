# rps_bonus.rb
VALID_CHOICES = %w((r)ock (p)aper (s)cissors (l)izard (sp)ock)
VALID_CHOICES_2 = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts "=> #{message}"
end

player_count = 0
computer_count = 0

def valid_choice(option)
  case option
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 's'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  else
    ':('
  end
end

def win?(first_player, second_player)
  (first_player == 'rock' &&
    (second_player == 'scissors' || second_player == 'lizard')) ||
    (first_player == 'paper' &&
    (second_player == 'rock' || second_player == 'spock')) ||
    (first_player == 'scissors' &&
    (second_player == 'paper' || second_player == 'lizard')) ||
    (first_player == 'lizard' &&
    (second_player == 'paper' || second_player == 'spock')) ||
    (first_player == 'spock' &&
    (second_player == 'scissors' || second_player == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won this round!")
  elsif player == computer
    prompt("It's a tie!!")
  else
    prompt("You Lost this round!")
  end
end

prompt("Welcome to the new RPS, Best of 5 Wins.")

loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().upcase().downcase!
    # Prevents user from entering uppercase choices
    # downcase on a non uppercase words will return nil, thus the upcase
    if (VALID_CHOICES_2.include?(choice) == true) || (choice = valid_choice(choice)) != ':('
      break
    else
      prompt("#{choice} I'm sorry, please choose a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES_2.sample()

  Kernel.puts("=>You choose #{choice} & the computer choose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_count += 1
  elsif win?(computer_choice, choice)
    computer_count += 1
  end

  if player_count == 5
    prompt("Congrats! You won 5 to #{computer_count}!")
    player_count = 0
    computer_count = 0
    prompt("Would you like to play again?(Y/N)")
    answer = Kernel.gets().chomp()
    break unless answer.upcase().downcase().start_with?('y')
  elsif computer_count == 5
    prompt("Sorry. You lost #{player_count} to 5!")
    computer_count = 0
    player_count = 0
    prompt("Would you like to play again?(Y/N)")
    answer = Kernel.gets().chomp()
    break unless answer.upcase().downcase().start_with?('y')
  end
end

prompt("Thank you for playing! Goodbye!")
