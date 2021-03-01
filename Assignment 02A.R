# Assignment 02A.R
# [name], there are [number] days left in the semester
# date()
# Difference in dates
Name <- "Charlotte"
Intro <- "there are"
End <- "days left in the semester"
TimeDays <- as.integer(as.Date("2021-05-07")-Sys.Date())
TimeDays
cat(Name,Intro,TimeDays,End)
