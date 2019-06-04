first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

puts "What else do you like?"
four = $stdin.gets.chomp

puts "Your fourth variable is: #{four}"

#  ARGV wants commands when executing.  ruby ex13 X X X etc

#  Don't use gets.chomp with ARGV.  Use $stdin.gets.chomp
