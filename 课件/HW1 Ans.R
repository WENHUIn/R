#1
num <- 0
for (i in 1 : 1000){
  a <- rnorm(1,0,1)
  b <- (a >1.96) + (a < -1.96)
  num <- num + b}
num/1000

#2
accept <- 0
for (i in 1 :1000){
  x <-round(runif(100,0,1))
  x_bar <- mean (x)
  sd_x <- sd(x)
  sd_x_bar <- sd_x/sqrt(100)
  t <- (x_bar - 0.5)/sd_x_bar
  c <- (t > -1.96) & (t < 1.96)
  accept <- accept + c}
  print(accept/1000)