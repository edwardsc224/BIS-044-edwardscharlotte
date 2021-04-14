#Assignment 4.R
library(tidyverse)
# Read the two csv files into data frames.
results <-
  read.csv("city-of-st-louis-survey.csv") 
decode <- 
  read.csv("city-of-st-louis-decode.csv")

results <- select(results,Owner,Land.Area)

#Drop all rows from the first data frame (survey) that do not have Owner values 
# starting with "A".
results$First <-
  substr(results$Owner,1,1)
results <- results[which(results$First=="A"),]
  
#Convert the Owners in the survey data to the standardized names in the decode data.
Merged <- merge(results,decode, by.x="Owner",by.y="Original.Name")

#Total "Land Area" by standardized name.

Merged %>% group_by(Standardized.Names) %>% 
  summarise(Area=sum(Land.Area)) 

#Print to the console a list of the 10 largest (by Land Area) landowners that 
# start with "A", along with their total Land Area owned.
list_data <-
  Merged[order(-Merged$Land.Area),][1:10,]

print(list_data)
