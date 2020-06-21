## HW11
## Wenhui Yang
## 03/09/2019

##########################
## Exercise 2
x <- rep(NA,500)
for (i in 1:500) {
  attend <- runif(100,0,1)
  attitude <- 0.5 * attend + rnorm(100)
  error <- rnorm(100)
  score <- 0.5 * attend + attitude + error
  reg <- lm(score~attend+attitude)
  beta <- reg$coefficients["attend"]
  x[i] <- beta
}
mean(x)

##########################
## Exercise 3
li <- 15
fb <- 9
if (li >= 15 & fb >=15){
  sns <- (li+fb)*2
} else if (li < 10 & fb < 10){
  sns <- (li+fb)*0.5
} else {
  sns <- li+fb
}
sns

##########################
## Exercise 4
x <- seq(1,3,by=0.01)
y <- (x-1)^3 + 0.5*x^2 - x - 2 
plot(x,y, type = "l")
abline(h=0)
x <- c(1,3)
i <- 2
while(abs(x[i]-x[i-1])>0.0001){
  x[i+1] <- x[i] -((x[i]-1)^3 + 0.5*x[i]^2 - x[i] - 2) / (3*(x[i]-1)^2 + x[i] - 1)
  i <- i + 1 
}
print(x[i])