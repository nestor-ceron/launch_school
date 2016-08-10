# twenty_one.rb
require 'pry'

SUIT = %w(Diamond Heart Club Spade).freeze
CARDS = %w(1 2 3 4 5 6 7 8 9 10 Jack Queen King Ace).freeze
STAY_LIMIT = 17
BLACK_JACK = 21

def initialize_deck(suit, cards)
  cards.product(suit).shuffle
end

def deal_card(deck)
  deck.pop
end

def prompt(msg)
  puts "=> #{msg}"
end

def calc_total(cards_delt)
  total = 0
  cards_delt.map { |card| total += card_value(card) }
  if cards_delt.select { |card| card[0] == 'Ace' }.count.times do
    total -= 10 if total > BLACK_JACK end
  end
  total
end

def card_value(card)
  case card[0]
  when 'Jack', 'Queen', 'King'
    10
  when 'Ace'
    11
  else  
    card[0].to_i
  end
end

def win_or_bust(total, player)
  if total == BLACK_JACK
    prompt("#{player} has 21!")
    return true
  elsif total > BLACK_JACK
    prompt("Bust! #{player} losses")
    return true
  elsif player == 'Computer' && total >= STAY_LIMIT
    return true
  else
    prompt("#{player} is at #{total}")
    return false
  end
end

loop do
  deck_of_cards = initialize_deck(SUIT, CARDS)

  player_cards = []
  dealer_cards = []

  player_total = 0
  computer_total = 0

  2.times { dealer_cards.push(deal_card(deck_of_cards)) }
  2.times { player_cards.push(deal_card(deck_of_cards)) }

  system 'clear'
  prompt("Dealr has: #{dealer_cards[0].join(' of ')} and a unknown card")
  prompt("Player has: #{player_cards[0].join(' of ')} and a #{player_cards[1].join(' of ')}")

  loop do
    player_total = calc_total(player_cards)
    break if win_or_bust(player_total, 'Player')
    prompt('Would you like to (h)it or (s)tay?')
    answer = gets.chomp
    break unless answer.downcase.start_with?('h')
    player_cards.push(deal_card(deck_of_cards))
    prompt("Player dealt: #{player_cards.last.join(' of ')}")
  end

  if player_total <= BLACK_JACK
    loop do
      computer_total = calc_total(dealer_cards)
      break if win_or_bust(computer_total, 'Computer')
      if computer_total < STAY_LIMIT
        dealer_cards.push(deal_card(deck_of_cards))
        prompt("Dealer dealt: #{dealer_cards.last.join(' of ')}")
      end
    end
    if computer_total <= BLACK_JACK
      prompt("Computer stays at #{calc_total(dealer_cards)}")
      if player_total < computer_total
        prompt('Computer Wins!')
      elsif player_total > computer_total
        prompt('Player Wins!')
      elsif player_total == computer_total
        prompt('Player Pushes!')
      end
    end
  else
    prompt('Computer Wins!')
  end

  prompt('Would you like to play again?(Y/N)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing Twenty One! Goodbye!')
