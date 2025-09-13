#Assignment 3 Analyzing 2016 data “Poll” Data in R
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll,stringsAsFactors = FALSE)
str(df_polls)
head(df_polls)#first parts of data frame
mean(df_polls$ABC_poll)#Calculates Mean of ABC_poll
median(df_polls$CBS_poll)#Calculates median of CBS_poll
range(df_polls[,c("ABC_poll","CBS_poll")]) #Calculates the range between CBS_poll and ABC_poll
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol #Difference between CBS_poll and ABC_poll 
print(df_polls) # Check to make sure data frame displays the difference
install.packages("ggplot2")#installed R package ggplot2
library(ggplot2)
View(df_polls)#Creates a table of df_polls
ggplot(data = df_polls,aes(x = Name,y = Diff))+ #pulls data frame df_polls into bar graph and defines x and y variables
  geom_bar(fill = "red",stat = "identity")+ # fill gives color of bars and stat gives y value in bar graph
labs(x = "Name", y = "Difference in CBS_poll and ABS_poll",title = "Analyzing 2016 data “Poll” Data in R") #labeling bar graph





