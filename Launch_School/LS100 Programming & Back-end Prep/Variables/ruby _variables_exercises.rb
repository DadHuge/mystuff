#  1.  Write a program called name.rb that asks the user to type in their name
# => an then prints out greeting message with their name included.
puts 'What is your name?'
name = gets.chomp
puts 'Hello, ' + name.

#  Write a program called age.rb that asks a user how old they are then tells
# => them how old they will be in 10, 20, 30, and 40 years.
# => them how old they will be in 10, 20, 30, and 40 years.
 puts 'How old are you?'
 a = gets.chomp.to_i
 puts 'In 10 years you will be:'
 puts a + 10
 puts 'In 20 years you will be:'
 puts a + 20
 puts 'In 30 years you will be:'
 puts a + 30
 puts 'In 40 years you will be:'
 puts a + 40

#  Add another section onto name.rb that prints the name of the user 10 times.
# => You must do this without explicitly writing the puts method 10 times.
puts 'What is your name?'
name = gets.chomp
10.times do |name|
end
