=begin
In ruby, nearly everything is an object. When you call a method with some expression as an argument, that expression is evaluated by ruby and reduced, ultimately, to an object. The expression can be an object literal, an variable name, or a complex expression; regardless, it is reduced to an object. Ruby then makes that object available inside the method. This is called passing the object to the method, or, more simply, object passing.

In addition to method arguments, the caller (sometimes called the receiver) of a method call — the object on which the method is called — can be thought of as an implied argument. As such, we need to include method callers in our discussion of object passing.

We also need to think about return values. Just as much as arguments are passed to methods, return values are passed by those methods back to the caller. Thus, return values must be included in our discussion of object passing.

Ruby also supports blocks, procs, and lambdas. All of these include the concepts of passing arguments and return values around. We will usually talk of passing objects to and from methods, but you should interpret that as referring to blocks, procs, and lambdas as well.

In ruby, many operators like +, *, [], and ! are methods, and even = acts like a method. This means that the operands of these operators are arguments, and the operators have return values; these arguments and return values are passed around just like other methods.

Because of all of this generality, we will use some terminology pretty loosely. Objects can be literals, named objects (variables and constants), or complex expressions. Methods can include methods, blocks, procs, lambdas, and even operators. Arguments can include actual arguments, the caller of the method, operator operands, or a return value. This loose use of the terminology is imprecise, but easier to understand than repeating ourselves at every opportunity.

Passing around immutable values in ruby acts a lot like pass by value:

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)
puts a # 3
puts b # 5

As you can see, although we assign a new value to x in #plus, the original argument, a, is left unchanged. (The method, however, does return the result of adding 2 to a, 5, which is stored in b.) So, you can say that ruby appears to be pass by value, at least with respect to immutable values.

Pass by Reference

By contrast, with pass by reference, a reference to an object is passed around. This establishes an alias between the argument and the original object: both the argument and object refer to the same location in memory. If you modify the argument’s state, you also modify the original object.

Ruby appears to use pass by reference when passing mutable objects. For example, consider the following code:

def uppercase(value)
  value.upcase!
end

name = 'William'
uppercase(name)
puts name               # WILLIAM

Here, our method can modify the name String through its alias value, so it looks like ruby is pass by reference here.

If pass by value is employed for immutable objects, but all variables are references, then what exactly is happening when we pass an immutable object? Let’s run a short test:

def print_id number
  puts "In method object id = #{number.object_id}"
end

value = 33
puts "Outside method object id = #{value.object_id}"
print_id value

This code prints:

Outside method object id = 67
In method object id = 67

Quite clearly, number and value reference the same object despite the object being immutable. We can also see that value was not copied. Thus, ruby is not using pass by value. It appears to be using pass by reference.

In a pure pass by reference language, assignment would be a mutating operation. In ruby, it isn’t, and the reason for this was discussed earlier; ruby variables and constants aren’t objects, but are references to objects. Assignment merely changes which object is bound to a particular variable.

Given all of this, it’s not uncommon to just say that ruby is pass by reference value, pass by reference of the value, or pass by value of the reference. It’s all a little muddy, but the 3 terms mean essentially the same thing: ruby passes around copies of the references. In short, ruby is neither pass by value nor pass by reference, but instead employs a third strategy that blends the two strategies.
=end
