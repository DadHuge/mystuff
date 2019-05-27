#  When you have a specific action that you need to perform, look for
# => it first among Ruby's standard classes.  Using libraries
# => like the Math module can help you solve problems efficiently.

# => Let's say you wanted to find a way to calculate the square root of a
# => number.  Ruby's Math module has a method called sqrt that you can
# => use right away.
Math.sqrt(400)
# => 20.00

# => Or maybe you need to use PI for something.
Math::PI

#  What if you wanted to calculate what specific day July 4th occurred
# => in 2008?  You can use Ruby's built-in Time class
t = Time.new(2008, 7, 4)
t.monday?
# => false
t.friday?
# => true 
