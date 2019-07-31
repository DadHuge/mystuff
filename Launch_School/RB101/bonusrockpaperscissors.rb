VALID_CHOICES = {
  rock: 'r',
  paper: 'p',
  scissors: 'sc',
  lizard: 'l',
  spock: 'sp'
}

ITEMS = VALID_CHOICES.values

RANDOM = ITEMS[rand(ITEMS.length)]

TRACKING = {
  wins: 0,
  losses: 0,
  ties: 0
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if  (player == 'r' && computer == 'sc' ||
      player == 'r' && computer  == 'l' ||
      player == 'p' && computer == 'r' ||
      player == 'p' && computer == 'sp' ||
      player == 'sc' && computer == 'p' ||
      player == 'sc' && computer == 'l' ||
      player == 'l' && computer == 'sp' ||
      player == 'l' && computer == 'p' ||
      player == 'sp' && computer == 'sc' ||
      player == 'sp' && computer == 'r')
  prompt("You won!")
  return 1
  elsif (player == 'r' && computer  == 'p' ||
        player == 'p' && computer == 'sc' ||
        player == 'sc' && computer == 'r' ||
        player == 'l' && computer == 'r' ||
        player == 'sp' && computer == 'l' ||
        player == 'sc' && computer == 'sp' ||
        player == 'p' && computer == 'l' ||
        player == 'sp' && computer == 'p' ||
        player == 'r' && computer == 'sp')
  prompt("Computer won!")
  return -1
  else
    prompt("Tied! ahhahahah!")
    return 0
  end
end

def scorekeeper(result)
  if result == 1
    TRACKING[:wins] += 1
  elsif result == -1
    TRACKING[:losses] += 1
  else
    TRACKING[:ties] += 1
  end
end

loop do
  choice = ''
  loop do
    prompt("Welcome to the rock, paper, scissors, spock, lizard game!  Please choose one:")
    VALID_CHOICES.each { |k, v| prompt("#{v} is #{k}") }
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.value?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end



  computer_choice = RANDOM

  prompt("You chose: #{VALID_CHOICES.key(choice)}, Computer chose: #{VALID_CHOICES.key(computer_choice)}")

  result = display_result(choice, computer_choice)

  scorekeeper(result)

  wins = TRACKING[:wins]
  losses = TRACKING[:losses]
  ties = TRACKING[:ties]

  prompt("Here is the current score update.  Wins: #{wins} Losses: #{losses} Ties: #{ties}")

  prompt("Y or Yes to play again!")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.  Good bye!")
