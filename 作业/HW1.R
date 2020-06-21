# HW1
# Wenhui Yang

# question 1
num <- 0
for (i in 1 : 1000) 
a <- rnorm(1,0,1)
print(a)
a > 1.96
a < -1.96
num <- sum(rnorm(1000,0,1))
print(num)
num > 1.96
num < -1.96
num/1000

# question 2
reject <- 0
for (i in 1 : 1000) 
x <- round(runif(100,0,1))
x_bar <- mean(x)
se_x <- sd(x)
t_value <- se_x/sqrt(100)
print(t_value)
t_value > -1.96 & t_value < 1.96
reject <- sum(round(runif(1000,0,1)))
print(reject/1000)








