options <- c("rock", "paper", "scissor")


play_game <- function(){
  computer_score <- 0
  player_score <- 0
  
  for(i in 1:3){
    print(paste("Round",i))
  computer_select <- sample(options,1)
  print(options)
  player_select <- readline("Please choose one : ")
 
  
  if(computer_select == player_select){
    computer_score = computer_score+1
    player_score = player_score+1
    
      } else if(computer_select == "rock"){
          if(player_select == "paper"){
             player_score = player_score+1
          }else if(player_select == "scissor"){
                   computer_score = computer_score+1
          }else{
             computer_score = computer_score+1
          }
        
      } else if(computer_select == "paper"){
          if(player_select == "rock"){
             computer_score = computer_score+1
          }else if(player_select == "scissor"){
                   player_score = player_score+1
          }else{
             computer_score = computer_score+1
          }
        
      }else {
          if(player_select == "paper"){
             computer_score = computer_score+1
          }else if(player_select == "rock"){
                   player_score = player_score+1
          }else{
             computer_score = computer_score+1
          }
      }
  print(paste("Computer : ",computer_select))
  print(paste("player : ",player_select))
  print(paste("Computer score is",computer_score))
  print(paste("Player score is",player_score))
  x <- "No"
  
  while(x!="Yes" & i<3){
    x <- readline("Are you ready for the next round (Yes/No) ")
    
  }
  
  }
  print("-------------------------")
  print("Result")
  if(computer_score > player_score){
    print("You Lose")
  }else if(computer_score < player_score){
    print("You Win")
  }else{
    print("to end in a draw")
  }
  
}


