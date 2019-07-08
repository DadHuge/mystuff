def numeric?(num)
  true if Integer(num) rescue false
end

def float?(num)
  true if Float(num) rescue false
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the Mortgage and Car Loan Calculator!")

name = ''
loop do
  prompt("First off, what is your name?")
  name = gets.chomp()

  if name.empty?() || numeric?(name)
    prompt("Sorry, that's not a valid name.  Please re-enter.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do
  amount = ''
  loop do
    prompt("Please enter the amount of your loan.")
    amount = Kernel.gets.chomp()

    if numeric?(amount) || float?(amount)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  years = ''
  loop do
    prompt("Please enter the loan duration in years.")
    years = Kernel.gets.chomp()

    if numeric?(years)
      break
    else
      prompt("Hmm...that doesn't look like a valid number.")
    end
  end

  interest_rate = ''
  loop do
    prompt("Please enter your loans Annual Percentage Rate (APR).  You don't need a % symbol.")
    interest_rate = Kernel.gets.chomp()

    if numeric?(interest_rate) || float?(interest_rate)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  info_summarized = <<-MSG
  Your answer is based on the following provided information:
    1) Loan amount is: #{amount}
    2) Length of loan: #{years} years
    3) Annual Percentage Rate (APR): #{interest_rate}%
  MSG

  prompt(info_summarized)

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Would you like to run the calculator again?  Y for yes.")
  answer = Kernel.gets.chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the calculator.  Have a great day!")
