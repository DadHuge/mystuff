def numeric?(num)
  true if Integer(num) rescue false
end

def float?(num)
  true if Float(num) rescue false
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

name = ''

loop do
  prompt("Welcome to Calculator! Enter your name:")
  name = Kernel.gets().chomp()

  if name.empty?() || numeric?(name)
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if numeric?(number1)
      break
    elsif float?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if numeric?(number2)
      break
    elsif float?(number2)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              if number1 && number2 == Integer
                number1.to_i() + number2.to_i()
              else
                number1.to_f() + number2.to_f()
              end
            when '2'
              if number1 && number2 == Integer
                number1.to_i() - number2.to_i()
              else
                number1.to_f() - number2.to_f()
              end
            when '3'
              if number1 && number2 == Integer
                number1.to_i() * number2.to_i()
              else
                number1.to_f() * number2.to_f()
              end
            when '4'
              if number1 && number2 == Integer
                number1.to_i() / number2.to_i()
              else
                number1.to_f() / number2.to_f()
              end
            end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator.  Good bye!")

=begin
Extracting messages in the program to a configuration file.

There are lots of messages sprinkled throughout the program. Could we move them into some configuration file and access by key? This would allow us to manage the messages much easier, and we could even internationalize the messages.

First, we need to extract the messages into a configuration file. We can choose any format, from plain .txt file to json to csv. Ruby has libraries that can help with parsing any of those formats. Most Rubyists prefer the yaml format, so we'll use that. We'll extract our messages into a file called calculator_messages.yml. Make sure this file is created in the same directory as your calculator program.

calculator_messages.yml

welcome: "Welcome to Calculator! Enter your name:"
valid_name: "Make sure to enter a valid name."

# ... rest of file omitted for brevity

As you can see, it's just a list of key/value pairs, almost like a hash. Next, we'll parse this .yml file using a module that comes with the Ruby standard Library.

To use that module, in your calculator.rb file, add require 'yaml' and you can parse the calculator_messages.yml file, then save the parsed data into a variable.

calculator.rb
# at the top of file

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

Before continuing, check out what MESSAGES is. You can do so with puts MESSAGES.inspect. Go do that now. We'll wait....

If you did that, you should have seen that MESSAGES is a normal Ruby hash. The yaml gem parsed the contents of the yml file, and created a Ruby hash for us. This is convenient, because we know how to work with hashes.

Now, all we have to do is replace all hard-coded strings with the key in the MESSAGES hash.

# replace this:
prompt("Welcome to Calculator! Enter your name:")

# with this:
prompt(MESSAGES['welcome'])

Go ahead and replace all the prompt calls. Your program is now using a configuration file!
=end
