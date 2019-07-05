#  Write a program that iterates over an array and builds a new array that is
# => the result of incrementing each value in the original array by a value of
# => 2.  You should have two arrays at the end of this program.  Print both
# => arrays using the p mehtod instead of puts.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map { |x| x + 2 }

p array
p array2
