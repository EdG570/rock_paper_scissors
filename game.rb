VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'scissors' && computer == 'paper') ||
     (player == 'paper' && computer == 'rock')
 
    prompt("Congratulations, you won!")

  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'scissors' && computer == 'rock') ||
        (player == 'paper' && computer == 'scissors')

    prompt("Today was not your day. The computer wins!")
  else 
    prompt("It was a tie!")
  end
end

user_choice = ''
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("'#{user_choice}' is not a valid choice. Please choose between: rock, paper, scissors")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{user_choice}. The computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Do you want to play again? y or n")
  play_again = Kernel.gets().chomp()
  break unless play_again.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")






