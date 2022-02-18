US <- read.csv("us-states.csv")
Penn <- filter(US,state=="Pennsylvania")
View(Penn)
n <- length(Penn$date)
Penn$incr_cases <- 1
for (i in 2:n) {
  Penn$incr_cases[i] <- (Penn$cases[i]-Penn$cases[i-1]) 
}
Penn$incr_cases
Penn$incr_deaths <-1
for (i in 2:n) {
  Penn$incr_deaths[i] <- (Penn$deaths[i]-Penn$deaths[i-1]) 
}
Penn$incr_deaths
sd(Penn$incr_cases)
