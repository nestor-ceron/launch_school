#medium_2_q4.rb

sentence = "Humpty Dumpty sat on a wall."

def reverse_order(message)
  message = message.split.reverse.join(' ')
end

p reverse_order(sentence)

# or
# words = sentence.split(/\W/)
# words.reverse!
# backwards_sentence = words.join(' ') + '.'