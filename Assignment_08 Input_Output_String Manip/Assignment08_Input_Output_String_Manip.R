#Reading the proteome of Helicobacter pylori (strain ATCC 700392 / 26695)

# Installed Canprot package
install.packages("canprot")
library("canprot")
#Set pathway to file
setwd("C:/Users/18135/Documents/Open Source R Fall 2025 Janae/r-programming-assignments/GitHub/r-programming-assignments/Assignment_08 Input_Output_String Manip")
getwd()

#proteome_ATCC_700392_2695 <- system.file("UP000000429_85962.fasta", package = "canprot")

# Read the sequences, and print the first one

#read_fasta("UP000000429_85962.fasta", type = "seq") # hit the max entries in fasta; omitted 554 entries; not enough memory
BiocManager::install(c("Biostrings", "ShortRead"))
BiocManager::install("Biostrings", force = TRUE) # reinstalling package
library(Biostrings)
proteome_ATCC_700392_2695 <- "C:/Users/18135/Documents/Open Source R Fall 2025 Janae/r-programming-assignments/GitHub/r-programming-assignments/Assignment_08 Input_Output_String Manip/UP000000429_85962.fasta"
proteome <- readAAStringSet("UP000000429_85962.fasta")
#Checking for data set
print(proteome)
View(proteome)
#Setting my data frame to use plyr
proteome_df <- data.frame(
  names = names(proteome),
  sequences = as.character(proteome),
  stringsAsFactors = FALSE
)
print(proteome_df)
library(plyr) # load plyr
#length of sequences in proteome_df
seq_lengths <- width(proteome)
print(seq_lengths) # error check
mean_length <- mean(seq_lengths)
print(mean_length) # overall mean length of a sequence throughout proteome of Helicobacter pylori (strain ATCC 700392 / 26695

# Extract group information from sequence names
seq_names <- names(proteome_df)
groups <- substr(seq_names, 1, 10)  # Example: first 10 characters as group
seq_data <- data.frame(Group = groups, Length = seq_lengths)

# Calculate mean by group
mean_by_group <- ddply(seq_data, .(Group), summarize, Mean_Length = mean(Length))
print(mean_by_group) # mean of groups
write.table(
  mean_by_group,
  file = "mean_by_group.txt",
  sep  = "\t",
  row.names = FALSE
)
library(dplyr)
 new_proteome_df <- data.frame(
   names = names(proteome),
   sequences = as.character(proteome),
   stringsAsFactors = FALSE
 )
 filtered_data <- new_proteome_df %>%
   slice(1:2) %>%  # Select only the first two rows
   filter(grepl("MVLE", sequences))
print(filtered_data)
View(filtered_data)

#Extract names and write them to a CSV file

write.csv(
  filtered_data$names,
  file      = "MVLE_sequence_proteins.csv",
  row.names = FALSE,
  quote     = FALSE
)

#Write Filtered Data Frame to a CSV
write.csv(
  filtered_data,
  file      = "MVL_sequence_proteins_full.csv",
  row.names = FALSE
)
