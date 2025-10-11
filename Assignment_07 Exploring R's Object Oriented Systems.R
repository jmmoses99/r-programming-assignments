
#Choose Data
data("DNase")
head(DNase)

#Describe its structure
str(DNase)

#Summarize data set
summary(DNase)

#View the data set
View(DNase)

#Examines OO system in more depth
install.packages("pryr")
library(pryr)


#Created an S3 example
s3_obj <- list(conc ~ density, data = DNase)
print(s3_obj)
class(s3_obj) <- "Recombinant Protein"
print(class(s3_obj))
#Check Class S3
otype(s3_obj)
typeof(s3_obj) #Output is "list"

#UseMethod(s3_obj) # error 'generic' argument must be a character string


setClass("Recombinant Protein",
         slots = c(run = "numeric", conc = "numeric", density = "numeric"))
s4_obj <- new("Recombinant Protein", run = 1, conc = 0.04882812, density = 0.017)

#Checks class system
class(s4_obj)

isS4(s4_obj) # Checks if S4
print(s4_obj)

typeof(s4_obj) #Checks objects base type

attributes(s4_obj) # Checks attributes of data

is.object(s4_obj) # Supposed to return false, but does not; not a pure base type
