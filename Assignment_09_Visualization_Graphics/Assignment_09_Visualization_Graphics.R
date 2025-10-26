#Assignment09 Visualization Graphics

#Set pathway to file
setwd("C:/Users/18135/Documents/Open Source R Fall 2025 Janae/r-programming-assignments/GitHub/r-programming-assignments/Assignment_09_Visualization_Graphics")
getwd()

#Loaded Data
install.packages("dslabs")
data("us_contagious_diseases", package = "dslabs")
head("us_contagious_diseases")
print(us_contagious_diseases)
View(us_contagious_diseases)

# Scatter plot
plot(us_contagious_diseases$disease, us_contagious_diseases$count,
     main   = "Contagious Disease Count from 1928-2011",
     xlab   = "Contagious Disease",
     ylab   = "Count",
     )

# Histogram
hist(us_contagious_diseases$weeks_reporting,
     main   = "Contagious Disease Weeks Reporting from 1928-2011",
     xlab   = "Weeks Reporting")

# Lattice Visualization
library(lattice)

# Conditional scatter plot (small multiples)
xyplot(count ~ weeks_reporting| factor(disease),
       data = us_contagious_diseases,
       main = "Lattice: Total Count vs. Weeks Reporting by Disease from 1928-2011 ",
       par.settings = list(fontsize = list(text = 10)))

# Box-and-whisker plot
bwplot(count ~ factor(disease),
       data = us_contagious_diseases,
       main = "Lattice: Total Count by Disease")

#ggplot2 Visualization

library(ggplot2)

# Scatter plot with smoothing
ggplot(us_contagious_diseases, aes(x = weeks_reporting, y = count, color = factor(disease))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Total Count vs. Weeks Reporting by Disease from 1928-2011")

# Faceted histogram
ggplot(us_contagious_diseases, aes(weeks_reporting)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ disease) +
  labs(title = "ggplot2: Weeks Reporting distribution by Disease from 1928-2011")

