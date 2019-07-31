=begin
Some Rubyists say Ruby is "pass by value" because re-assigning the object within the method doesn't affect the object outside the method. Example:

def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim

Note that the code example above has two different local variables named name. There is one scoped within the method, and there is one in the main scope. This is not variable shadowing, because the main scope variable is not accessible to the method. Within the method, we could have named the variable something other than name.

The question is: when the main scope name is passed into the method, via change_name(name), did we pass in a reference or did we pass in the value?

It looks like it's by value, since re-assigning the variable only affected the method-level variable, and not the main scope variable.

A)  When an operation within the method mutates the caller, it will affect the original object.

def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect          # => ["bob", "kim", "jim"]

Can you spot the change? We changed the + to a << and moved name out of an array. This implies that when we use + to concatenate two arrays together, it is returning a new array and not mutating the original. However, when we use << to append a new value into an array, it is mutating the original array and not returning a new array.
=end
