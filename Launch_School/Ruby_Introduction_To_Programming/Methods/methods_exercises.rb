#  Write a program that prints a greeting message.  This program should
# => contain a method called greeting that takes a name as its
# => paramater and returns a String.

def say_greeting(name)
  puts name + '.'
end

say_greeting("Hello")
say_greeting("It is great to meet you")
say_greeting("My name is Tony")

#  My answer above is WRONG.  Right answer below.
def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting(Tony)

#  What do these return?

irb(main):001:0> puts x = 2
2
=> nil
irb(main):002:0> p name = "Joe"
"Joe"
=> "Joe"
irb(main):003:0> four = "four"
=> "four"
irb(main):004:0> print something = "nothing"
nothing=> nil
irb(main):005:0>


#  Write a program that includes a method called multiply that takes two
# => arguments and returns the product of the two numbers.

def multiply(num1,num2)
  num1 * num2
end

multiply(10,30)

#  What will the following code print to the screen?


def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippee")
# => Returns nothing because it will only return the return line, and nothing
# => is put there.

#  Edit the method definition in exercise 4 so that it does print words on the
# => screen.

def scream(words)
  puts words + "!!!!"
end

scream("Yippee")
