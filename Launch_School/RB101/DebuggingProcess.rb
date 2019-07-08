=begin
1.  Reproduce the error
2.  Determine the boundaries of the error
3.  Trace the code
4.  Understand the problem well.

def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[2]
end

make, model = car("Ford Mustang")
make == "Ford"         # => true
model.start_with?("M") # => NoMethodError: undefined method `start_with?' for nil:NilClass

This code is fairly straightforward. One aspect of it that's a bit tricky is the return value of the car method and the assignment from that method to local variables make and model. When an array is assigned to two variables on the same line, each element of that array gets assigned to one of the variables. In the example above, the first array element gets assigned to make and the second array element gets assigned to model. This type of assignment, where we assign more than one value on the same line, is called "multiple assignment".

When we try to see if model starts with the character "M", we get an error. After reproducing the problem consistently and testing various data inputs, you notice that model always returns nil. In this example, make is expected to be "Ford" and model is expected to be "Mustang". It looks like we've got a bug here.

Let's trace the code backwards. When you first call car, a string is passed in as an argument. The string represented by the local variable new_car is passed into two helper methods: make and model. Inside each of these methods, the intention is to split new_car into two new strings: "Ford" and "Mustang". The make method should return "Ford" and the model method should return "Mustang". In this case, the make method returns the correct value but the model method does not. Based on these observations, we know that the bug in this code originates from the model method. This is called trapping the error.

After narrowing the source of the bug to the model method, it's time to break down the code within the method. We know that the return value of this method is always nil, so let's inspect each return value in order to pinpoint the source of the unexpected return value.

def model(new_car)
  new_car # => "Ford Mustang"
end

That's the expected return value of new_car. No issues so far.

def model(new_car)
  new_car.split(" ") # => ["Ford", "Mustang"]
end

The return value here is an array, which is expected based on our knowledge of how #split works.

def model(new_car)
  new_car.split(" ")[2] # => nil
end

Aha! It looks like the unexpected return value here is the result of calling [2] on the ["Ford", "Mustang"] array. The return value is nil because there is no element at index 2 in this array. Since arrays have a zero-based index, we need to call [1] in order to return "Mustang" from the array.

def model(new_car)
  new_car.split(" ")[1] # => "Mustang"
end

Implement a Fix

There are often multiple ways and multiple layers in which you can make the fix. For example, we could suppress the error from being thrown with this code:

model.start_with?("M") rescue false # => false

    We'll still have the original error in the model method, though. In some cases, you'll be using a library or code that you can't modify. In those situations, you have no choice but to deal with edge cases in your own code. In this example, we should fix the offending code in the model method.

    One very important note is to fix one problem at a time. It's common to notice additional edge cases or problems as you're implementing a fix. Resist the urge to fix multiple problems at once.

    You'll almost never want to use the trailing rescue like we did in the above example. It's usually a code smell that you haven't thought carefully about the possible problems that could go wrong, and therefore you haven't thought about how to handle the potential error conditions. Also, by not specifying any particular error to rescue, you're suppressing all possible errors, including potentially very destructive ones that may impact your program in unexpected ways.

    Test the Fix

    Finally, after implementing a fix, make sure to verify that the code fixed the problem by using a similar set of tests from step #2. After you learn about automated testing, you'll want to add an additional automated test to prevent regression. For now, you can test manually.

Techniques for Debugging

    Line by line

    Your best debugging tool is your patience, which is why we mentioned temperament first in this article. Most bugs in your code will be from overlooking a detail, rather than a complete misunderstanding of a concept. Being careful, patient and developing a habit of reading code line-by-line, word-by-word, character-by-character is your most powerful ability as a programmer. If you are naturally impatient or like to gloss over details, you must train yourself to behave differently when programming. All other debugging tips and tools won't matter if you aren't detail oriented.

    Rubber Duck

    Rubber Duck Debugging sounds crazy, but its effectiveness is so well known that it has its own Wikipedia page. The process centers around using some object, like a rubber duck, as a sounding board when faced with a hard problem. The idea is that when you are forced to explain the problem to a rubber duck, you are actually forcing yourself to articulate the problem, detail by detail. This often leads to discovering the root of the problem. Of course, the object doesn't have to be a rubber duck -- it can be anything, including another human being. The point is to focus your mind on walking through the code, line by line, and in that process, noticing a small detail that may reveal a deeper problem. If you've never experienced this phenomenon, we encourage you to try this out yourself next time you're stuck on a bug.

    Walking Away

    Another interesting debugging technique is to go for a walk. Some have claimed a swim, jog or even a shower helps too. Some claim this technique works because it activates a different part of your brain, and even when you walk away from the computer, your brain is still working on the problem in the background. Note that this is only effective if you first spend time loading the problem in your brain. You cannot just walk away when you first encounter a problem and expect this technique to work. Once you've loaded the problem in your brain, your brain may work on the problem even while you're sleeping! Also, our brains get tired too, so it's ok to step away and come back to it with fresh eyes and a refreshed brain.
=end
