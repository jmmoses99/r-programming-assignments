#Assignment 4 Visualizing and Interpreting Hospital Patient Data

#Setting the working directory
setwd("C:/Users/18135/Pictures/Open Source R Fall 2025 Janae/Data Sets R Assignments")

#Working Directory
getwd()

#Read file Use this format
#read.csv("C:/Users/YourName/Documents/Name of file.csv")
data <-read.csv("C:/Users/18135/Pictures/Open Source R Fall 2025 Janae/Data Sets R Assignments/Hospital Patient Data Practice.csv")

#First rows of table
head(data)
#View Table in R
View(data)

#Installation of packages
library(ggplot2)
#Data Preparation and Cleaning

#Define vectors 
Frequency     <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstAssess   <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)    # bad=1, good=0 #low = 0, high = 1
SecondAssess  <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)    # low=0, high=1
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)    # low=0, high=1



#Categorical Strings to numeric codes
df_hosp <- data.frame(
  Frequency, BloodPressure, FirstAssess,
  SecondAssess, FinalDecision, stringsAsFactors = FALSE
)


# Inspect and handle NA:
summary(df_hosp)
df_hosp <- na.omit(df_hosp) #Gets rid of NA

#Print (Check)
print(df_hosp)
View(df_hosp)

#Side by Side Box Plots

boxplot(
  BloodPressure ~ FirstAssess,
  data = df_hosp,
  names = c("Good","Bad"),
  xlab = "First Assesment",
  ylab = "Blood Pressure",
  col = c("green","red"),
  main = "BP by First MD Assessment"
)

boxplot(
  BloodPressure ~ SecondAssess,
  data = df_hosp,
  names = c("Low","High"),
  xlab = "Second Assesment",
  ylab = "Blood Pressure",
  col = c("green","red"),
  main = "BP by Second MD Assessment"
)

boxplot(
  BloodPressure ~ FinalDecision,
  data = df_hosp,
  names = c("Low","High"),
  xlab = "Final Decision",
  ylab = "Blood Pressure",
  col = c("green","red"),
  main = "BP by Final Decision"
)

hist(
  df_hosp$Frequency,
  breaks = seq(0, 1, by = 0.1),
  xlab = "Visit Frequency",
  main = "Histogram of Visit Frequency"
)

hist(
  df_hosp$BloodPressure,
  breaks = 8,
  xlab = "Blood Pressure",
  main = "Histogram of Blood Pressure"
)


  