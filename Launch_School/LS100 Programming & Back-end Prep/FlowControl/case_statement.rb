a = 5

case a
when 5
  put "a is 5"
when 6
  puts "a is 6"
else puts "a is neither 5, nor 6"
end

# you can assign a variable to case
a = 5

answer = case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer

#  you don't have to give case an argument either.
a = 5
answer = case a
when a == 5
  puts " a is 5"
when a == 6
  puts "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer
