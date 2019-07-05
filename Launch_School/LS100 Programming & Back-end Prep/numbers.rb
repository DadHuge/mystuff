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
