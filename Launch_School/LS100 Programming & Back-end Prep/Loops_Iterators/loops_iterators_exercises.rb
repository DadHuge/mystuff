#  Write a while loop that takes input from the user, performs an action, and
# => only stops when the user types "STOP".  Each loop can get info from the user.

loop do
  puts  "Do you love the booty?  Type STOP to end."
  answer = gets.chomp
  if answer == "STOP"
    break
  end
end

#  Use the each_with_index method to iterator through an array of your creation
# => that prints each index and value of the array.
x = ['Hello', 'my', 'name', 'is', 'Tony']
a = 1

x.each do |word|
  puts "#{a}. #{word}"
  a += 1
end

#  Did not use each_with_index method.
top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end
#  Above is correct.

#  Write a method that countdowns to zero using recursion.

def minus(x)
  puts x
  if x != 0
    minus(x - 1)
  end
end

puts minus (50)
