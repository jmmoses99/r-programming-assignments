#Assignment 3 Analyzing 2016 data “Poll” Data in R
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll,stringsAsFactors = FALSE)
str(df_polls)
head(df_polls)
mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[,c("ABC_poll","CBS_poll")])
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol
print(df_polls) # Check to make sure data frame displays the difference
install.packages("ggplot2")
library(ggplot2)
ggplot(data = df_polls,aes(x=Name,y=ABC_poll,y2=CBS_poll))





