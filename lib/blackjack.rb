def welcome
  puts "Welcome to the Blackjack Table"  # code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" # code #display_card_total here
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  if card_total > 21 
    puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
  else
    puts "You hit #{card_total}, you win!"
  end
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  hitorstay = get_user_input 
  if hitorstay == "h"
    card_total += deal_card
  elsif hitorstay == "s"
    card_total
  else
    invalid_command
    card_total
  end
end

def invalid_command
   puts "Please enter a valid command" # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
