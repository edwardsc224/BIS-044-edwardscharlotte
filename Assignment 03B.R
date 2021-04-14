# Assignment 03B.R
results <- 
  read.csv("PRESIDENT_precinct_primary.csv")

Trump <- 0
Biden <- 0
n <- length(results)

for(i in 1:n) {
  if(results$candidate[i] == "DONALD J TRUMP") {
    Trump <- Trump + results$votes[i]
  } else if(results$candidate[i] == "JOSEPH R BIDEN") {
    Biden <- Biden + results$votes[i]
    
  }
}

cat("Trump", Trump)
cat("Biden", Biden)


# Solution file for BIS 044 Assignment 03B, Spring 2021

results <- read.csv("PRESIDENT_precinct_primary.csv")
BIDEN <- 0
TRUMP <- 0
COUNTER <- 0
END <- length(results$votes)

for (i in 1:END) {
  if (results$candidate[i] == "JOSEPH R BIDEN") {
    BIDEN <- results$votes[i] + BIDEN
  }
  else if (results$candidate[i] == "DONALD J TRUMP") {
    TRUMP <- results$votes[i] + TRUMP
  }
  else {}
  # Following is just to give "visual feedback"  
  if (round(i/END*100, digits = 0) > COUNTER) {
    COUNTER <- round(i/END*100, digits = 0)
    cat(COUNTER,"pct complete\n")}
}

cat ("Number of votes for Biden: ", BIDEN)
cat ("Number of votes for Trump: ", TRUMP)

# Above will satisfy this assignment, but we didn't get all the votes
results$candidate <- as.factor(results$candidate)
levels(results$candidate)