#  Below we have given you an array and a number.  Write a program that checks
# => to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
  puts "#{number} is in the array."
end
end

#OR
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

#  How do you return the word "example" from the following array
arr = [["test", "hello", "world"], ["example", "mem"]]

arr.flatten[3]  #  how?  YOU START AT 0
#  Launch_School answer arr.last.first (arr (name), last (the last array),
# => first (the first variable))

#  What is the problem below and how can it be fixed?
names = ['bob', 'joe', 'susan', 'margaret']
names.delete('margaret')
names.push('jody')

#  Launch School answer
names[3] = 'jody'

#  Write a program that iterates over an array and builds a new array that is
# => the result of incrementing each value in the original array by a value of
# => 2.  You should have two arrays at the end of this program.  Print both
# => arrays using the p mehtod instead of puts.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map { |x| x + 2 }

p array
p array2

#  Launch school solution
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
end

p arr
p new_arr

#  OR
arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr
