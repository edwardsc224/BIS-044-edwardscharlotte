# Assignment 5.R
# Read data from colleges on Chapter 9 and create a graph that looks as much as possible 
#like the example
library(tidyverse)

results <-
  read.csv("most-recent-cohorts-all-data-elements-1.csv") 

results <- results%>% select(HIGHDEG, STABBR) %>% mutate(HIGHDEG = factor(HIGHDEG, 0:5))

ggplot(results,aes(HIGHDEG)) + 
  geom_bar() +
  facet_wrap(vars(STABBR)) +
  scale_x_discrete('Highest Degree', drop = FALSE) +
  ylab('Frequency') +
  ggtitle('Highest Degree By State')
