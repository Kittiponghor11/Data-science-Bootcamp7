spend_food <- function(){
  
name <- readline("What is your name? ")
print(paste("Hello!" , name))

age <- readline("How old are you? ")
print(paste("You are", age, "years old"))
total <- 0
choice <- "Yes"

while(choice == "Yes"){
print("Please choose one number")
food <- readline("1:Hamburger , 2:Hotdog , 3:Pizza : ")
if(food == 1){
  print("A Hamburger costs 35 Baht")
  total=total+35
}else if(food == 2){
  print("A Hotdog costs 25 Baht")
  total=total+25
}else if(food == 3){
  print("A Pizza costs 40 Baht")
  total=total+40
}else{
  print("Not Found")
  total =total+0
}
print("Would you like to order anything else?")
choice <- readline("Yes or No : ")
}

print(paste("The total amount is ",total,"baht"))
status <- "not yet"

while(status != "complete") {
  print("Please purchase the product")
  status <- readline("complete or not yet : ")
}
print("Thank you")
}
