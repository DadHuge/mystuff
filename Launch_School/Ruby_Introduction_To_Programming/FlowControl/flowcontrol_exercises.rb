#  Write a method that takes a string as an argument.  This method should return
# => an all-caps version of the string, only if the string is longer than 10
# => characters.

puts "Type anything you want, just make it 10 letters or more!"
a = gets.chomp

if a.size > 10
  puts "#{a}".upcase
else
  puts "Dude, that is not 10 letters or more!"
end

#  Answer from book
#  caps_method.rb

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps ("Joe Smith")
puts caps ("Joe Robertson")

#  Write a program that takes a number from the user between 0 and 100 and
# => reports back whether the number is between 0 and 50, 51 and 100, or above
# => 100.

puts "Input any number you wish!"
a = gets.chomp.to_i

answer = case a
when a = 0..50
  puts "You number is between 0 and 50."
when a = 51..100
  puts "Your number is between 51 and 100."
else
  puts "Your number is either below 0 or above 100."
end

#  Works, but is wrong.  The question did not ask me to recognize negatives.
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50."
elsif number <= 100
  puts "#{number} is between 51 and 100."
else
  puts "#{number} is above 100."
end

puts "You can't enter a negative!"

#  Write a program that takes a number from the user between 0 and 100 and
# => reports back whether the number is between 0 and 50, 51 and 100, or above
# => 100.

puts "Input any number you wish!"
number = gets.chomp.to_i

case
when number < 0 then puts "You can't enter a negative!"
when number <= 50 then puts "You number is between 0 and 50."
when number <= 100 then  puts "Your number is between 51 and 100."
else
  puts "You number is above 100."
end
