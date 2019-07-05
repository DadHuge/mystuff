def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

#  Ruby methods always return the evaluated result of the last line of the
# => expression unless an explicit return comes before it.

#  If you wanted to explicitly return a value you can use the return keyword.
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

#  The method above only returns the return line.  Not number + 4
#  Don't need to use return in order to return something from a method.
