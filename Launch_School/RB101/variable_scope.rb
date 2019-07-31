=begin
One of the trickiest things to understand as a beginner is the concept of scope and how it pertains to accessing variables.  There are several different types of variables, each with their own scoping rules.  This assignment will only be talking about local variables.
  a.  Inner scope can access variables initialized in an outer scope, but not vice versa.
  b.  CONSTANT DECLARATIONS cannot be declared in method definions, and are available throughout your application's scopes.
  c.  Global variables are declared by starting the variable name with the $.  These are available throughout your entire app, overriding all scope boundaries.  Rubyists tend to not use these.  There can be unexpected complications.
  d.  Class variables are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable. Class variables must be initialized at the class level, outside of any method definitions. They can then be altered using class or instance method definitions.
  e.  Instance variables are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class. Instance variables can cross some scope boundaries, but not all of them. You will learn more about this when you get to OOP topics, and should not use instance variables until you know more about them.
  f. Local variables are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.


  Rubyists prefer to use do..end for multi-line blocks and {...} for single line blocks.
    The block following the method invocation is actually an argument being passed into the method.
    We'll focus on one particular attribute of Ruby blocks: they create a new scope for local variables. You can think of the scope created by a block following a method invocation as an inner scope. Nested blocks will create nested scopes. A variable's scope is determined by where it is initialized.

    Example 2: inner scope variables cannot be accessed in outer scope

loop do       # the block following the invocation of the `loop` method creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined local variable or method `b' for main:Object

2.times do
  a = 'hi'
  puts a      # 'hi' <= this will be printed out twice due to the loop
end

loop do
  puts a      # => NameError: undefined local variable or method `a' for main:Object
  break
end

puts a        # => NameError: undefined local variable or method `a' for main:Object

Example 4: nested blocks

Nested blocks follow the same rules of inner and outer scoped variables. When dealing with nested blocks, our usage of what's "outer" or "inner" is going to be relative. We'll switch vocabulary and say "first level", "second level", etc.

a = 1           # first level variable

loop do         # second level
  b = 2

  loop do       # third level
    c = 3
    puts a      # => 1
    puts b      # => 2
    puts c      # => 3
    break
  end

  puts a        # => 1
  puts b        # => 2
  puts c        # => NameError
  break
end

puts a          # => 1
puts b          # => NameError
puts c          # => NameError

If the block following a method invocation has a scope that "leaks," then a method definition has a scope that is entirely self contained. The only variables a method definition has access to must be passed into the method definition. (Note: we're only talking about local variables for now). A method definition has no notion of "outer" or "inner" scope -- you must explicitly pass in any parameters to a method definition.

Example 1: a method definition can't access local variables in another scope

a = 'hi'

def some_method
  puts a
end

# invoke the method
some_method     # => NameError: undefined local variable or method `a' for main:Object

Example 2: a method definition can access objects passed in

def some_method(a)
  puts a
end

some_method(5)  # => 5

Constants

We're focusing only on local variables for now because you should not be using any other type of variable yet. If you find yourself using global, class or instance variables, stop. But you may be using constants, which is perfectly ok. Therefore, we should briefly talk about the scoping rules for constants.

Surprisingly, the scoping rules for constants is not the same as local variables. In procedural style programming, constants behave like globals. Here's an example:

USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman

That's surprising, considering local variables can't "leak" into method definitions like that. What about constants and a method invocation with a block?

FAVORITE_COLOR = 'taupe'

1.times do
  puts "I love #{FAVORITE_COLOR}!"  # => I love taupe!
end

Not surprising, since the local variables behave the same. What about initializing a constant in an inner scope?

loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns

That is very different from local variables.

Constants are said to have lexical scope, which will have more meaningful consequences when we get to object oriented programming. For now, just remember that constants have different scoping rules from local variable
=end

=begin
MORE VARIABLE SCOPE
  Goals are:  1.  Build on the definitions outlined in the previous assignment.
  2.  Provide a slightly more complex but more accurate mental model of methods, blocks, how they inter-relate, and how local variable scope fits into the picture.

  Method definition is when, within our code, we define a Ruby method using the def keyword.

def greeting
  puts "Hello"
end

Method invocation is when we call a method, whether that happens to be an existing method from the Ruby Core API or core Library, or a custom method that we've defined ourselves using the def keyword.

greeting # Calling the greeting method outputs "Hello"

Essentially the block {..} acts as an argument to the method.  In the same way that a local variable can be passed as an argument to a method at invocation, when a method is called with a block it acts as an argument to that method.

Example 1: method parameter not used

def greetings(str)
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs 'Goodbye'

Example 2: method parameter used

def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs 'Hello'
# Outputs 'Goodbye'

Given this additional context, we can think of method definition as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block. We can then think of method invocation as using the scope set by the method definition. If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.
Summary

The purpose of this assignment was to provide some additional insight and a more accurate mental model regarding methods, blocks and local variable scope. The interaction between methods and blocks is a deep topic and is covered in much more detail in a later course; for now you just need to understand a few key points:

    The def..end construction in Ruby is method definition
    Referencing a method name, either of an existing method or subsequent to definition, is method invocation
    Method invocation followed by {..} or do..end defines a block; the block is part of the method invocation
    Method definition sets a scope for local variables in terms of parameters and interaction with blocks
    Method invocation uses the scope set by the method definition
    =end
