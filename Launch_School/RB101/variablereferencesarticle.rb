=begin
An object is a bit of data that has some sort of state — sometimes called a value — and associated behavior. It can be simple, like the Boolean object true, or it can be complex, like an object that represents a database connection.

Objects can be assigned to variables, like this:
greeting = 'Hello'
=> "Hello"

We use #object_id frequently in this article. Every object in Ruby has a unique object id, and that object id can be retrieved simply by calling #object_id on the object in question. Even literals, such as numbers, booleans, nil, and Strings have object ids:

>> 5.object_id
=> 11

>> true.object_id
=> 20

>> n
nil.object_id
=> 8

>> "abc".object_id
=> 70101471581080

Get comfortable with using #object_id, both while reading this article, and whenever you have trouble understanding why an object has an unexpected value.

object ids will be the same if assigned to the same string.

Objects can be either mutable or immutable.
Some objects can be modified, others can never be modified; different languages, again, do different things. In C++ and Perl, for instance, string objects are mutable, but in Java and Python, string objects are immutable. Understanding mutability of an object is necessary to understanding how your language deals with those objects.
  In Ruby, numbers and boolean values are immutable.  Once we create an immutable object, we cannot change it.

Everytime you add a formula to an object, the object doesn't change, but a new "float object" is created.  It returns the answer you want, but doesn't change the original object id or reference.

Instead of modifying the original object, a new Float is created a is bound to the new object.

Immutable objects aren’t limited to numbers and booleans. Objects of some complex classes, such as nil (the only member of the NilClass class) and Range objects (e.g., 1..10) are immutable. Any class can establish itself as immutable by simply not providing any methods that alter its state.

Unlike numbers, booleans, and a few other types, most objects in Ruby are mutable; they are objects of a class that permit modification of the object’s state in some way. Whether modification is permitted by setter methods or by calling methods that perform more complex operations is unimportant; as long as you can modify an object, it is mutable.

Some languages make copies of method arguments, and pass those copies to the method — since they are merely copies, the original objects can’t be modified. Objects passed to methods in this way are said to be passed by value, and the language is said to be using a pass by value object passing strategy.

Other languages pass references to the method instead — a reference can be used to modify the original object, provided that object is mutable. Objects passed to methods in this way are said to be passed by reference, and the language is said to be using a pass by reference object passing strategy.
=end
