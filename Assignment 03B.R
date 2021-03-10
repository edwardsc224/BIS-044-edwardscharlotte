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
