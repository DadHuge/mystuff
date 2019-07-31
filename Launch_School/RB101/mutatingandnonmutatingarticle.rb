=begin
Variables don't actually contain values, but instead serve as references to objects.

All methods are non-mutating with respect to immutable objects. A method simply can’t modify an immutable object. Thus, any method that operates on numbers and boolean values is guaranteed to be non-mutating with respect to that value.

Let’s modify our code again:

def fix(value)
  puts "initial object #{value.object_id}"
  value = value.upcase
  puts "upcased object #{value.object_id}"
  value.concat('!')
end

s = 'hello'
puts "original object #{s.object_id}"
t = fix(s)
puts "final object #{t.object_id}"

If you run this code, you will see something like this:

original object 70349169469400
initial object 70349169469400
upcased object 70349169435840
final object 70349169435840

This shows that value = value.upcase bound the return value of value.upcase to value; value now references a different object than it did before. Prior to the assignment, value referenced the same String as referenced by s, but after the assignment, value references a completely new String; the String referenced by #upcase’s return value.

>> s = 'Hello'
=> "Hello"

>> s.object_id
=> 70101471465440

>> s += ' World'
=> "Hello World"

>> s
=> "Hello World"

>> s.object_id
=> 70101474966820

Setter methods for class instance variables and indexed assignment are not the same as assignment. We’ll return to this below, but for now, remember that setter methods and indexed assignment usually mutate the calling object.

>> def fix(value)
--   value = value.upcase!
--   value.concat('!')
-- end
=> :fix

>> s = 'hello'
=> "hello"

>> s.object_id
=> 70363946430440

>> t = fix(s)
=> "HELLO!"

>> s
=> "HELLO!"

>> t
=> "HELLO!"

>> s.object_id
=> 70363946430440

>> t.object_id
=> 70363946430440

This time, though we assigned a reference to value, we end up with both s and t referring to the same object. The reason for this is that String#upcase! returns a reference to its caller, value. Since the reference returned by value.upcase! is the same, albeit modified, String we started with, the assignment effectively rebinds value back to the object it was previously bound to; nothing is changed by the assignment.

Concatenation is Mutating!

The #<< method used by collections like Arrays and Hashes, as well as the String class, implements concatenation; this is very similar to the += operator. However, there is a major difference; += is non-mutating, but #<< is mutating. Lets look at an example that uses String#<<:

>> s = 'Hello'
=> "Hello"

>> s.object_id
=> 70101471465440

>> s << ' World'
=> "Hello World"

>> s
=> "Hello World"

>> s.object_id
=> 70101471465440

This example is nearly identical to our earlier example using +=, but with one major difference: we use #<< instead of +=. The #<< method is mutating with respect to its caller (s here), so the object referenced by s is modified; no new objects are created, so s still references the same object it did prior to the #<< call.

The << operator is actually a method that is defined for some classes. It is usually used as a shorthand for appending new values to a collection or String. Such classes define << to mutate their left-hand operand (the caller).

Some classes use << for “bit shift” operations; such operations are usually non-mutating. Other classes may employ << for operations that have nothing to do with bit shifts or appending; in those cases, you likely need to read the documentation or test the operation in a short program to determine if it is mutating or non-mutating.

  Refining the Mental Model

  What does this have to do with whether Ruby is pass by value or pass by reference? The mere fact that Ruby can have methods that mutate its arguments would seem to say that Ruby must use pass by reference in some circumstances. Arguments that are passed by copy cannot be mutated, so Ruby must use pass by reference when a method can mutate its arguments.

  More importantly, the question of whether Ruby is pass by value or pass by reference usually concerns whether a method will mutate its arguments or caller. With this discussion, we’re better equipped to determine whether a method will mutate one of them.

  The presence of a ! at the end of a method name is a pretty good indicator that a method mutates its caller. However, not all mutating methods use the ! convention. In such cases, you need to look at the source code of the method to see what operations are performed. Certain operations, like setters and indexed assignments should always be treated as mutating methods; others, like assignment and the assignment operators (+=, *=, etc) are always non-mutating.

  While none of this modifies our mental model for object passing, it is all consistent with that mental model. Immutable objects still seem to be passed by value, while mutable objects seemed to be passed by reference. What we have done, though, is show that assignment can break the binding between an argument name and the object it references. This is important to keep in mind when examining the relationships between variables and objects.
=end
