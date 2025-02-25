def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    new_card = deal_card
    current_total += new_card
  elsif input != 'h' and input != 's'
    invalid_command
    hit?(current_total)
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    hit = hit?(total)
    if hit == total
        hit?(total)
    else
        total = hit
        display_card_total(total)
    end
  end
  end_game(total)
end
    
