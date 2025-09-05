#Assignment 2 Description: Writing Functions and Debugging
#Use the vector:
#assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#Consider this function:
#myMean <- function(assignment2){
#return(sum(assignment) / length(someData))
#}
#print(myMean(assignment2))
#The error message after print(myMean(assignment2)) was Object 'assignment' not found
#called from: myMean(assignment2)
# The function variables could not be found by R to be pulled into the function
#The original vector name was assignment2

#Corrected Function and Debug by Me
 assignment2 <- c(16,18,14,22,27,17,19,17,17,22,20,22)
 Mymean <- function(x){
   return(sum(assignment2)/length(assignment2))}
   print(Mymean(x))
 