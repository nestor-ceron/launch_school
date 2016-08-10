# tic_tac_toe.rb
require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnols
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER} & the Computer is #{COMPUTER_MARKER}"
  puts ' '
  puts "  #{brd[1]} | #{brd[2]} | #{brd[3]}"
  puts ' ---+---+---'
  puts "  #{brd[4]} | #{brd[5]} | #{brd[6]}"
  puts ' ---+---+---'
  puts "  #{brd[7]} | #{brd[8]} | #{brd[9]}"
  puts ' '
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.size == 2 ? arr.join(' ') : arr.join(delimiter)
end

def players_move!(brd)
  square = 0
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt('Sorry that is not a vaild option')
  end
  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, c_player)
  players = %w(Player Computer)
  if c_player == 'Player'
    players_move!(brd)
  elsif c_player == 'Computer'
    computers_move!(brd)
  end
  current_player = players.drop_while { |player| player == c_player }[0]
end

def computer_defense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      line.each do |index|
        if empty_squares(brd).include?(index)
          return index
        else
          next
        end
      end
    end
  end
  0
end

def computer_offense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      line.each do |index|
        if empty_squares(brd).include?(index)
          return index
        else
          next
        end
      end
    end
  end
  computer_defense(brd)
end

def computers_move!(brd)
  square = computer_offense(brd)
  if square != 0
    brd[square] = COMPUTER_MARKER
  else
    if empty_squares(brd).include?(5)
      square = 5
    else
      square = empty_squares(brd).sample
    end
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).join == PLAYER_MARKER * 3
      return 'Player'
    elsif brd.values_at(*line).join == COMPUTER_MARKER * 3
      return 'Computer'
    end
  end
  nil
end

def keep_score(winner, p_score, c_score)
  if winner == 'Player'
    p_score << 1
    if p_score.count == 5
      prompt('The Player has won best out of 5!')
      p_score.clear
      c_score.clear
    else
      prompt('So far Player has #{p_score.count} wins, and the Computer has #{c_score.count} wins.')
    end
  elsif winner == 'Computer'
    c_score << 1
    if c_score.count == 5
      prompt('The Computer has won best out of 5!')
      c_score.clear
      p_score.clear
    else
      prompt('So far Player has #{p_score.count} wins, and the Computer has #{c_score.count} wins.')
    end
  end
end

player_score = []
computer_score = []
current_player = ''

loop do
  board = initialize_board
  display_board(board)
  prompt('Who will go first?')
  prompt('Enter 1 for Player or, 2 for Computer:')

  begin
    choice = gets.chomp.to_i
    if choice == 1
      current_player = 'Player'
    elsif choice == 2
      current_player = 'Computer'
    end
  end until choice != 1 || choice != 2

  loop do
    current_player = place_piece!(board, current_player)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt("#{detect_winner(board)} won!")
  else
    prompt("It's a tie!")
  end

  keep_score(detect_winner(board), player_score, computer_score)

  prompt('Would you like to play again?(Y/N)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing Tic Tac Toe! Good Bye!')
