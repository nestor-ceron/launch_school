# hard_5.rb

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless !is_a_number?(word)
    end
    true
  else
    false
  end
end

 p dot_separated_ip_address?("123.12.1.12")