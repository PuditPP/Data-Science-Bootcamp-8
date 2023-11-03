

paoyingshub <-function(hand){
  while (TRUE) { 
    player_choice <- hand
    
    if(player_choice =="Q"){
      break
    }
    computer_choice <- sample(c('Rock', 'Paper', 'Scissors'), 1)
    
    if(player_choice == computer_choice){
      print("tie")
    }
    
    if (player_choice == 'Rock' && computer_choice == 'Scissors') {
      return('You win')
    } else if (player_choice == 'Paper' && computer_choice == 'Rock') {
      return('You win')
    } else if (player_choice == 'Scissors' && computer_choice == 'Paper') {
      return('You win')
    } else {
      return('You lose')
    }

    
  }
}

