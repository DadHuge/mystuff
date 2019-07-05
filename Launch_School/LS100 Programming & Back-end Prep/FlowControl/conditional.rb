puts "Put in a number"
a = gets.chomp.to_i
#  Have to use to_i because gets always gives us a string.
if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

if a == 3 then puts "x is 3" end
# must use then if you are using one line syntax.
