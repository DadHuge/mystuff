puts "Give me a number:"
number = gets.chomp.to_i

bigger = number * 10
puts "#{bigger} is a larger number."

puts "Give me some money please:"
b = gets.chomp.to_f

a = b * 0.10
puts "You can have 10% of that back, or #{a}."
