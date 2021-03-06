#install.packages("plyr")
library(data.table)
library(plyr)

file <- read.table(file = "Assignment 6 Dataset-1.txt", header = TRUE, sep = ",")

StudentAverage <- ddply(file,"Sex",transform,Grade.Average=mean(Grade))

SA_data <- data.frame(StudentAverage)

filter_SA_data <- subset(SA_data, grepl("i", SA_data$Name, ignore.case=T))

write.csv(filter_SA_data, file = 'filter_SA.csv')

