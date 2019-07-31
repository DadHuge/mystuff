=begin
1.  In programming, naming things is very hard.  Try to develop a habit of thinking about how to name things descriptively.

2.  In Ruby, make sure to use snake_case when naming everything, except classes which are CamelCase or constants, which are all UPPERCASE.

3.  Using Rubocop on your code will help catch some of these issues as wel.

4.  CONSTANTS should be immutable.  Ruby allows changes, but don't do it.

5.  METHODS should only do one thing, and it's responsibility should be limited.
    RULE OF THUMB:  10 lines.  15 lines or more, should be split into different methods.

    METHODS GUIDELINES:
      a.  Don't display something to the output and return a meaningful value.  Since ruby always returns a value, the key here is that the return value shouldn't be the intent of the method.

      b.  Decide whether or a method should return a value with no side effects OR perform side effects with no return value.
                  The method name should refelct whether it has side effects or not.  ! when the method has side effects.

      c.  In Ruby, we would not say return_total, it would just be total - returning a value is IMPLIED.  Further, we would not expect a total method to have side effects or print a value out.  We would expect a method called total to be defined something like this.

                  def total(cards) # [1, 2, 3]
                  end
                  # => Integer

      d.  When working with a method, you should be able to mentally extract the method from the larger program, and just work with the method in isolation.  Working this way helps compartmentalize your focus, an important skill when working on large codebases.
              WHEN YOU READ GOOD CODE, THE METHODS ARE ALL AT THE SAME LAYER OF ABSTRACTION.

              METHODS ARE LIKE LEGO BLOCKS.  EACH SHOULD BE STAND-ALONE PIECES OF FUNCTIONALITY.


              Sometimes, you'll have methods that only display things. For example:

              def welcome
                puts "welcome"
              end

              This is fine, but it's not obvious whether a method called welcome returns a string, or outputs strings directly. One way to resolve this is to help yourself remember and prefix all methods that output values with something like print_, say_ or display_. This will require some discipline and it's important that you only output values in these methods. Don't mutate parameters or return values.

        f.  Know when to use a "do/while" vs a "while" loop. Here's an example:

         while answer.downcase != 'n' do
           puts "Continue? (y/n)"
           answer = gets.chomp
         end

         When running this, Ruby will throw an exception of "undefined local variable or method 'answer'". To correct this, we have to initialize answer before the while statement, like this:

         answer = ''
         while answer.downcase != 'n' do
           puts "Continue? (y/n)"
           answer = gets.chomp
         end

         That certainly would work, but a slightly better implementation could be to use a "do/while" loop:

         loop do
           puts "Continue? (y/n)"
           answer = gets.chomp
           break if answer.downcase == 'n'
         end

         Here, the entire code is contained in the loop, and it's slightly easier to reason with. You could even do without the answer variable and use the user's input (i.e. gets.chomp) in the if condition directly, but using answer is fine -- remember, clarity over terseness.

         g.  Everything is truthy except nil and false.
=end
