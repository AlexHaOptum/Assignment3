
best <- function(state, outcome) {
  outcomeOfCare <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
    if (((outcome != "heart attack") & (outcome != "heart failure") & (outcome != "pneumonia")))
    {
      stop("Invalid outcome")
    }
  
    states <- levels(outcomeOfCare[,7])[outcomeOfCare[,7]]
    verfication <- FALSE
    for (i in length(states))
      if (state != states[i])
      {
        stop("Invalid state")
      }

}

best("AL","heart attack")
