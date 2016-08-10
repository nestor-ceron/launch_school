# medium_3_q5.rb

# def color_valid(color)
#   if ['blue','green'].include?(color)
#     true
#   else
#     false
#   end
# end
# or

def color_valid(color)
  ['blue','green'].include?(color)
  # or color == "blue" || color == "green"
end

p color_valid("green")