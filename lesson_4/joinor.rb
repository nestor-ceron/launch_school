a = [1,2,3]

# def joinor(msg, delimiter = ' ', delimiter2 = ' or ')
#   formatted_msg = ""
#   msg.each do |a|
#     if a-1 == msg.length-1
#       formatted_msg += delimiter + delimiter2 + msg[a-1].to_s
#     elsif a-1 < msg.length-2
#       formatted_msg += msg[a-1].to_s + ", "
#     elsif a == 0
#       formatted_msg = msg[a].to_s
#     else
#       formatted_msg += msg[a-1].to_s
#     end
#   end
#   p formatted_msg
# end

def joinor(arr, delimiter=', ', word='or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.size == 2 ? arr.join(' ') : arr.join(delimiter)
end
p joinor(a)
a.pop
p joinor(a)
a.pop
p joinor(a)